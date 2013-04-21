class InventoriesController < ApplicationController
  load_and_authorize_resource
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to :back, :alert => exception.message
  end
  # GET /inventories
  # GET /inventories.xml
  def index
    @inventories = Inventory.order("id desc").paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @inventories }
    end
  end

  # GET /inventories/1
  # GET /inventories/1.xml
  def show
    @inventory = Inventory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @inventory }
    end
  end

  # GET /inventories/new
  # GET /inventories/new.xml
  def new
    @inventory = Inventory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @inventory }
    end
  end

  # GET /inventories/1/edit
  def edit
    @inventory = Inventory.find(params[:id])
  end

  # POST /inventories
  # POST /inventories.xml
  def create
    @inventory = Inventory.new(params[:inventory])

    respond_to do |format|
      if @inventory.save
        format.html { redirect_to(@inventory, :notice => 'Inventory was successfully created.') }
        format.xml  { render :xml => @inventory, :status => :created, :location => @inventory }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @inventory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /inventories/1
  # PUT /inventories/1.xml
  def update
    @inventory = Inventory.find(params[:id])

    respond_to do |format|
      if @inventory.update_attributes(params[:inventory])
        format.html { redirect_to(@inventory, :notice => 'Inventory was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @inventory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /inventories/1
  # DELETE /inventories/1.xml
  def destroy
    @inventory = Inventory.find(params[:id])
    @inventory.destroy

    respond_to do |format|
      format.html { redirect_to(inventories_url) }
      format.xml  { head :ok }
    end
  end
end
