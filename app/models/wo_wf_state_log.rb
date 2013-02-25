class WoWfStateLog < ActiveRecord::Base
	belongs_to :changed_by, :class_name => "User",
					   :foreign_key => "changed_by_id"
					   
	belongs_to :workorder

end
