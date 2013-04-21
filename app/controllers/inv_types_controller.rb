class InvTypesController < ApplicationController

  load_and_authorize_resource
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to :back, :alert => exception.message
  end
  
  # GET /inv_types
  # GET /inv_types.xml
  def index
    @inv_types = InvType.order("id desc").paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @inv_types }
    end
  end

  # GET /inv_types/1
  # GET /inv_types/1.xml
  def show
    @inv_type = InvType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @inv_type }
    end
  end

  # GET /inv_types/new
  # GET /inv_types/new.xml
  def new
    @inv_type = InvType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @inv_type }
    end
  end

  # GET /inv_types/1/edit
  def edit
    @inv_type = InvType.find(params[:id])
  end

  # POST /inv_types
  # POST /inv_types.xml
  def create
    @inv_type = InvType.new(params[:inv_type])
    @inv_type.created_id = current_user.id
    @inv_type.updated_id = current_user.id

    respond_to do |format|
      if @inv_type.save
        format.html { redirect_to(@inv_type, :notice => 'Inv type was successfully created.') }
        format.xml  { render :xml => @inv_type, :status => :created, :location => @inv_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @inv_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /inv_types/1
  # PUT /inv_types/1.xml
  def update
    @inv_type = InvType.find(params[:id])
    @inv_type.updated_id = current_user.id

    respond_to do |format|
      if @inv_type.update_attributes(params[:inv_type])
        format.html { redirect_to(@inv_type, :notice => 'Inv type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @inv_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /inv_types/1
  # DELETE /inv_types/1.xml
  def destroy
    @inv_type = InvType.find(params[:id])
    @inv_type.destroy

    respond_to do |format|
      format.html { redirect_to(inv_types_url) }
      format.xml  { head :ok }
    end
  end
end
