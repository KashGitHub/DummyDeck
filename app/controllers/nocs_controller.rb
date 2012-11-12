class NocsController < ApplicationController
  # GET /nocs
  # GET /nocs.json
  def index
    @nocs = Noc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @nocs }
    end
  end

  # GET /nocs/1
  # GET /nocs/1.json
  def show
    @noc = Noc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @noc }
    end
  end

  # GET /nocs/new
  # GET /nocs/new.json
  def new
    @noc = Noc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @noc }
    end
  end

  # GET /nocs/1/edit
  def edit
    @noc = Noc.find(params[:id])
  end

  # POST /nocs
  # POST /nocs.json
  def create
    @noc = Noc.new(params[:noc])

    respond_to do |format|
      if @noc.save
        format.html { redirect_to @noc, :notice => 'Noc was successfully created.' }
        format.json { render :json => @noc, :status => :created, :location => @noc }
      else
        format.html { render :action => "new" }
        format.json { render :json => @noc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nocs/1
  # PUT /nocs/1.json
  def update
    @noc = Noc.find(params[:id])

    respond_to do |format|
      if @noc.update_attributes(params[:noc])
        format.html { redirect_to @noc, :notice => 'Noc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @noc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nocs/1
  # DELETE /nocs/1.json
  def destroy
    @noc = Noc.find(params[:id])
    @noc.destroy

    respond_to do |format|
      format.html { redirect_to nocs_url }
      format.json { head :no_content }
    end
  end
end
