class MaintenanceRequestFormsController < ApplicationController
  def index
    @req_forms = MaintenanceRequestForm.order("created_at desc").all
  end

  def new
    @maintenance_request_form = MaintenanceRequestForm.new 
    # TODO
    @machines = Machine.active.all
    @ref_types = RefMaintenanceType.all
    @users = User.all
  end

  def create
    f = MaintenanceRequestForm.new params[:maintenance_request_form]
    if f.save
      redirect_to :action => :index, :notice => "Create Miantenance Form Successfully"
    else
      redirect_to :back
    end
  end
end
