class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable

  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :firstname, :lastname,
                  :id_no, :education_level_id, :address,
                  :emp_no, :job_title, :phone_mobile,
                  :start_work_date,
                  :permissions_attributes,
                  :permission_ids

  has_and_belongs_to_many :roles

  has_and_belongs_to_many :permissions
  # has_many :users_permissions, :class_name => "UsersPermission",
  #                              :foreign_key => :user_id
  # has_many :permissions, :through => :users_permissions,
  #                        :source => :permission

  accepts_nested_attributes_for :permissions

  def fullname
    "#{self.firstname} #{self.lastname}" 
  end

  def role?(role)
    !!self.roles.find_by_name(role.to_s) 
  end

end
