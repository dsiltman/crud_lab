class GallionsController < ApplicationController
  # GET /gallions
  # GET /gallions.xml
  def index
    @gallions = Gallion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gallions }
    end
  end

  # GET /gallions/1
  # GET /gallions/1.xml
  def show
    @gallion = Gallion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gallion }
    end
  end

  # GET /gallions/new
  # GET /gallions/new.xml
  def new
    @gallion = Gallion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gallion }
    end
  end

  # GET /gallions/1/edit
  def edit
    @gallion = Gallion.find(params[:id])
  end

  # POST /gallions
  # POST /gallions.xml
  def create
    @gallion = Gallion.new(params[:gallion])

    respond_to do |format|
      if @gallion.save
        format.html { redirect_to(@gallion, :notice => 'Gallion was successfully created.') }
        format.xml  { render :xml => @gallion, :status => :created, :location => @gallion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gallion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gallions/1
  # PUT /gallions/1.xml
  def update
    @gallion = Gallion.find(params[:id])

    respond_to do |format|
      if @gallion.update_attributes(params[:gallion])
        format.html { redirect_to(@gallion, :notice => 'Gallion was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gallion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gallions/1
  # DELETE /gallions/1.xml
  def destroy
    @gallion = Gallion.find(params[:id])
    @gallion.destroy

    respond_to do |format|
      format.html { redirect_to(gallions_url) }
      format.xml  { head :ok }
    end
  end
end
