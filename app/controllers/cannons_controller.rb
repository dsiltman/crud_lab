class CannonsController < ApplicationController
  # GET /cannons
  # GET /cannons.xml
  def index
    @cannons = Cannon.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cannons }
    end
  end

  # GET /cannons/1
  # GET /cannons/1.xml
  def show
    @cannon = Cannon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cannon }
    end
  end

  # GET /cannons/new
  # GET /cannons/new.xml
  def new
    @cannon = Cannon.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cannon }
    end
  end

  # GET /cannons/1/edit
  def edit
    @cannon = Cannon.find(params[:id])
  end

  # POST /cannons
  # POST /cannons.xml
  def create
    @cannon = Cannon.new(params[:cannon])

    respond_to do |format|
      if @cannon.save
        format.html { redirect_to(@cannon, :notice => 'Cannon was successfully created.') }
        format.xml  { render :xml => @cannon, :status => :created, :location => @cannon }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cannon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cannons/1
  # PUT /cannons/1.xml
  def update
    @cannon = Cannon.find(params[:id])

    respond_to do |format|
      if @cannon.update_attributes(params[:cannon])
        format.html { redirect_to(@cannon, :notice => 'Cannon was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cannon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cannons/1
  # DELETE /cannons/1.xml
  def destroy
    @cannon = Cannon.find(params[:id])
    @cannon.destroy

    respond_to do |format|
      format.html { redirect_to(cannons_url) }
      format.xml  { head :ok }
    end
  end
end
