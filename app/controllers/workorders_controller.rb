class WorkordersController < ApplicationController
  load_and_authorize_resource
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to :back, :alert => exception.message
  end

  # GET /workorders
  # GET /workorders.xml
  def index
    @workorders = Workorder.order("created_at desc").paginate( :page => params[:page] )

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @workorders }
    end
  end

  # GET /workorders/1
  # GET /workorders/1.xml
  def show
    @workorder = Workorder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @workorder }
    end
  end

  # GET /workorders/new
  # GET /workorders/new.xml
  def new
    @workorder = Workorder.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @workorder }
    end
  end

  # GET /workorders/1/edit
  def edit
    @workorder = Workorder.find(params[:id])
    # next action ?
    if params[:next_action] and @workorder.current_state.to_s == "request"
      render "step_#{@workorder.current_state}"
      return
    end

    if params[:next_action] # and @workorder.assigned_to_id == current_user.id
      render "step_#{@workorder.current_state}"
      return
    end
  end

  # POST /workorders
  # POST /workorders.xml
  def create
    @workorder = Workorder.new(params[:workorder])
    @workorder.updated_id = current_user.id
    @workorder.created_id = current_user.id
    @workorder.workflow_state = "request"
    # requested by
    @workorder.assigned_by_id = current_user.id 

    respond_to do |format|
      if @workorder.save
        format.html { redirect_to( root_path, :notice => 'Workorder was successfully created.') }
        format.xml  { render :xml => @workorder, :status => :created, :location => @workorder }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @workorder.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /workorders/1
  # PUT /workorders/1.xml
  def update
    @workorder = Workorder.find(params[:id])
    uid = current_user.id
    @workorder.updated_id = uid

    updated = false

    Workorder.transaction do
      if params[:workorder][:parts_attributes]
        params[:workorder][:parts_attributes].each do |s|
          s[:updated_id] = uid
          s[:created_id] = uid
        end
      end

      @workorder.workflow_action = params[:workorder][:workflow_action] unless params[:workorder][:workflow_action].blank?
      @workorder.trigger_workflow
      @workorder.update_attributes(params[:workorder])

      if params[:state_logs]
        @workorder.state_logs.last.update_attributes! params[:state_logs]
      end

      updated = true
    end

    respond_to do |format|
      if updated 
        format.html do 
          # update workflow
          if params[:state_logs]
            # dashboard
            redirect_to( root_path, :notice => 'Workorder was successfully updated.')
          else
            redirect_to(@workorder, :notice => 'Workorder was successfully updated.')
          end
        end
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @workorder.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /workorders/1
  # DELETE /workorders/1.xml
  def destroy
    @workorder = Workorder.find(params[:id])
    @workorder.destroy

    respond_to do |format|
      format.html { redirect_to(workorders_url) }
      format.xml  { head :ok }
    end
  end
end
