class Workorder < ActiveRecord::Base
  belongs_to :asset
  belongs_to :pm
  belongs_to :assigned_by, :class_name => "User",
                           :foreign_key => "assigned_by_id"
  belongs_to :assigned_to, :class_name => "User",
                           :foreign_key => "assigned_to_id"
  belongs_to :current_responder, :class_name => "User",
                                 :foreign_key => "assigned_to_id"
  has_many :state_logs, :class_name => "WoWfStateLog"
  has_many :parts, :class_name => "WoPart"

  accepts_nested_attributes_for :state_logs
  accepts_nested_attributes_for :parts

  REF_MAP = {
    :category => [
      { :key => 1, :val => :emergency },
      { :key => 2, :val => :corrective },
      { :key => 3, :val => :predictive },
      { :key => 4, :val => :preventive },
      { :key => 5, :val => :detective }
    ],
    :status => [
      { :key => 1, :val => :request },
      { :key => 2, :val => :open },
      { :key => 3, :val => :wait_for_material },
      { :key => 4, :val => :in_progress },
      { :key => 5, :val => :completed },
      { :key => 6, :val => :re_open },
      { :key => 7, :val => :accepted },
      { :key => 8, :val => :closed }
    ],
    :priority => [
      { :key => 1, :val => :normal },
      { :key => 2, :val => :important },
      { :key => 3, :val => :most }
    ],
    # :priority => [
    #   { :key => 1, :val => :safety_hazards },
    #   { :key => 2, :val => :safety_matters },
    #   { :key => 3, :val => :production_downtime },
    #   { :key => 4, :val => :normal_maintenance },
    #   { :key => 5, :val => :new }
    # ],
    :resolution => [
      { :key => 1, :val => :open },
      { :key => 2, :val => :resolved },
      { :key => 3, :val => :do_not_fix },
      { :key => 4, :val => :delayed },
      { :key => 5, :val => :duplicate }
    ],
    :orig => [
      { :key => 1, :val => :trouble_call },
      { :key => 2, :val => :pm },
      { :key => 3, :val => :rework },
      { :key => 4, :val => :other }
    ],
    :wo_type => [
      { :key => 1, :val => :fix },
      { :key => 2, :val => :power_shutdown },
      { :key => 3, :val => :setup_time },
      { :key => 4, :val => :adjust_time },
      { :key => 5, :val => :pn_change },
      { :key => 6, :val => :tool_change },
      { :key => 7, :val => :holiday },
      { :key => 8, :val => :ss },
      { :key => 9, :val => :wait_for_part },
      { :key => 10, :val => :wait_for_fix },
      { :key => 11, :val => :pm },
      { :key => 12, :val => :other },
    ]
  }

  include RefConst
  include Workflow

  # work request flow
  workflow do
    state :request do
      event :approve_request, :transitions_to => :awaiting_report
    end

    state :awaiting_report do
      event :wait_for_material, :transitions_to => :awaiting_for_material
      event :wait_for_contract, :transitions_to => :awaiting_for_contract
      event :in_process, :transitions_to => :in_process
    end

    state :awaiting_for_contract do
      event :get_contract, :transitions_to => :in_process
    end

    state :awaiting_for_material do
      event :get_material, :transitions_to => :in_process
    end

    state :in_process do
      event :complete, :transitions_to => :awaiting_completed
      event :incomplete, :transitions_to => :awaiting_completed
    end

    state :awaiting_completed do
      event :reject, :transitions_to => :rejected
      event :accept, :transitions_to => :accepted
    end

    state :rejected
    state :accepted

  end

  # scopes ---------------------------------------------

  scope :my_tasks, lambda{ |user| 
                      if user.role? :manager
                        # manager can assign to anyone
                        where(%Q{ 
                          (assigned_to_id = ? or assigned_by_id = ?) 
                          AND 
                          ( workflow_state not in (?) ) 
                          OR
                          ( workflow_state = 'request' )
                          OR
                          ( workflow_state = 'awaiting_completed' and assigned_by_id = ? )
                        }, user.id, user.id, [:accepted, :rejected], user.id) 
                      else
                        where(%Q{ 
                          (assigned_to_id = ? or assigned_by_id = ?) 
                          AND 
                          ( workflow_state not in (?) ) 
                        }, user.id, user.id, [:accepted, :rejected])

                      end
                    }
  # ---------------------------------------------------------

  self.per_page = 20
  # callbacks -------------------------
  
  before_create :add_default
  # after_create :start_the_wf
  # after_update :set_responder_for_complete, :if => lambda { workflow_state == :awaiting_completed }
  after_update :reopen_wo, :if => lambda { workflow_state.to_sym == :rejected }
  # before_update :trigger_workflow, :if => :workflow_action_changed?

  # def set_responder_for_complete
  #   # set to the person who approve request 
  #   assigned_to_id =  
  # end

  def start_the_wf
    self.workflow_action = "start"
    trigger_workflow 
  end

  def reopen_wo
    c = self.clone 
    c.rework_wo_id = self.id
    # reset attributes
    c.wo_no = nil 
    c.workflow_state = "request"
    c.workflow_action = nil
    c.updated_id = self.updated_id
    c.created_id  = self.created_id
    c.updated_at = nil
    c.created_at = nil
    c.assigned_time = Time.now
    c.time_needed = Time.now + (self.time_needed - self.assigned_time)

    # find user who responds this wo
    old_res_id = self.state_logs.where(:to_wf_state => "awaiting_completed").first.changed_by_id
    c.assigned_to_id = old_res_id
    Workorder.create c.attributes
  end

  def trigger_workflow
    # workflow_action must be the same name as wo event 
    if self.workflow_action_changed?

      # trigger wf state
      old_state = workflow_state 
      self.send(workflow_action + "!") # change wf state

      # new state
      if workflow_state.to_sym == :awaiting_completed
        self.assigned_to_id = self.assigned_by_id
        save!
      end

      # update log
      self.state_logs.create({
        :to_wf_state => self.workflow_state,
        :from_wf_state => old_state,
        :changed_by_id => self.updated_id,
        :workflow_action => workflow_action
      }) 

    end

    self
  end

  # --------------------------------------------------------
  def gen_wo_no
    now = Time.now.to_date
    prefix = wo_type_val.to_s[0..1].upcase + wo_type_id.to_s.rjust(2,"0")
    as = Workorder.where(:created_at => now..now+1.day).
                   where("wo_no like ?", "#{prefix}%")
    t = Time.now.to_date.strftime("%Y%m%d")
    wn = if as
           t + (as.count+1).to_s.rjust(3,"0")
         else
           t + "001"
         end
    # FI0120121131004 , fix type workorder no
    prefix + wn 
  end

  def add_default
    self.wo_no = self.gen_wo_no
    self.resolution_id = Workorder.get_ref_key(:resolution, :open)
    # self.assigned_time = Time.now
  end

  def complete?
    self.workflow_state == "rejected" or
    self.workflow_state == "accepted"
  end
end
