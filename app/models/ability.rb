class Ability 
  include CanCan::Ability
  def initialize(user)
    user ||= Use.new 
    if user.role? :manager
      can :manage, :all
    elsif user.role? :staff
      cannot :manage, User
      cannot :create, MaintenanceRequestForm
    end
  end
end
