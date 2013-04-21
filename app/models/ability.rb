class Ability 
  include CanCan::Ability
  def initialize(user)
    user ||= Use.new 

    cannot :manage, :all
    can :read, :all
    cannot :read, User

    if user.permissions.where(:name => "allow_importing_spare_part").count > 0
      can :create, Inventory
    end

    if user.permissions.where(:name => "allow_withdraw_spare_part").count > 0
      can :update, Inventory
    end

    if user.permissions.where(:name => "allow_work_request").count > 0
      can :create, Workorder
    end

    if user.permissions.where(:name => "allow_work_update").count > 0
      can :update, Workorder
    end

    if user.permissions.where(:name => "allow_manage_asset_and_inventory").count > 0
      can :manage, Asset
      can :manage, Inventory
      can :manage, InvType
    end

    # role base permission
    if user.role? :manager or user.role? :admin
      can :manage, :all
    elsif user.role? :staff
      cannot :manage, User
      # cannot :create, MaintenanceRequestForm
    end

  end
end
