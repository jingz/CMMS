class MachinesController < ApplicationController
  def index
    @machines = Machine.order("updated_at desc").
                        paginate( :page => params[:page])
  end

  def show
    @machine = Machine.find params[:id]
  end

  def new
    @machine_types = RefMachineType.all 
    @machine = Machine.new
  end

  def edit
    @machine_types = RefMachineType.all 
    @machine = Machine.find params[:id] 
  end

  def update
    @machine = Machine.find params[:id] 
    if @machine.update_attributes(params[:machine])
      redirect_to @machine, :notice => "Machine was successfullly updated"
    else
      redirect_to :action => "edit"
    end
  end

  def create
    m = Machine.new params[:machine]  
    if m.save
      redirect_to :action => :index
    else
      redirect_to :back
    end
  end

  def destroy
    m = Machine.find params[:id] 
    if m.update_attributes({ :status => "Delete", :disposed_date => Time.now.to_date })
      render :json => { :success => true, :record => m }
    else
      render :json => { :success => false, :record => m }
    end
  end
end
