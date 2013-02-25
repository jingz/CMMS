class MaintenanceRequestForm < ActiveRecord::Base
  belongs_to :ref_maintenance_type
  belongs_to :response_user, :class_name => "User", :foreign_key => "response_user_id"
  belongs_to :request_user, :class_name => "User", :foreign_key => "request_user_id"
  belongs_to :machine
  belongs_to :user

  before_create :init_status

  def init_status
    self.status = "Request" # TODO
    self.request_user_id = 4 # TODO
  end

end
