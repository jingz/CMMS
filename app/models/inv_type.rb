class InvType < ActiveRecord::Base
	has_many :inventories, :class_name => "Inventory",
											   :foreign_key => "type_id"

	self.per_page = 20
end
