class ProfessionalDevelopmentsController < ApplicationController
  before_filter :authenticate_user!
  # GET /professionaldevelopments
  # GET /professionaldevelopments.json
  def index
    @professionaldevelopments = Professionaldevelopment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json =>  @professionaldevelopments }
    end
  end

  # GET /professionaldevelopments/1
  # GET /professionaldevelopments/1.json
  def show
    @professionaldevelopment = Professionaldevelopment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json =>  @professionaldevelopment }
    end
  end

  # GET /professionaldevelopments/new
  # GET /professionaldevelopments/new.json
  def new
    @professionaldevelopment = Professionaldevelopment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json =>  @professionaldevelopment }
    end
  end

  # GET /professionaldevelopments/1/edit
  def edit
    @professionaldevelopment = Professionaldevelopment.find(params[:id])
  end

  # POST /professionaldevelopments
  # POST /professionaldevelopments.json
  def create
    @professionaldevelopment = Professionaldevelopment.new(params[:professionaldevelopment])

    respond_to do |format|
      if @professionaldevelopment.save
        format.html { redirect_to @professionaldevelopment, :notice => 'Professionaldevelopment was successfully created.' }
        format.json { render :json =>  @professionaldevelopment, :status => :created, :location => @professionaldevelopment }
      else
        format.html { render :action => "new" }
        format.json { render :json =>  @professionaldevelopment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /professionaldevelopments/1
  # PUT /professionaldevelopments/1.json
  def update
    @professionaldevelopment = Professionaldevelopment.find(params[:id])

    respond_to do |format|
      if @professionaldevelopment.update_attributes(params[:professionaldevelopment])
        format.html { redirect_to @professionaldevelopment, :notice => 'Professionaldevelopment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json =>  @professionaldevelopment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /professionaldevelopments/1
  # DELETE /professionaldevelopments/1.json
  def destroy
    @professionaldevelopment = Professionaldevelopment.find(params[:id])
    @professionaldevelopment.destroy

    respond_to do |format|
      format.html { redirect_to professionaldevelopments_url }
      format.json { head :no_content }
    end
  end
end
