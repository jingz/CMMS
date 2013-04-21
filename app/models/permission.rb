class Permission < ActiveRecord::Base
	has_many :users_permissions, :class_name => "UsersPermission",
															 :foreign_key => :permission_id
	has_many :users, :through => :users_permissions,
									 :source => :user
end
