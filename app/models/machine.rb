class Machine < ActiveRecord::Base
  belongs_to :ref_machine_type
  scope :active, where(:status => "Active")

  before_create :add_default

  # attr_accessible :picture
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  self.per_page = 10

  def add_default
    now = Time.now.to_date
    ms = Machine.where :created_at => now..now+1.day
    t = Time.now.to_date.strftime("%Y%m%d")
    ref_no = if ms
               t + (ms.count+1).to_s.rjust(3,"0")
             else
               t + "001"
             end
    self[:ref_no] = ref_no
    self[:status] = "Active" # TODO status ref
  end
end
