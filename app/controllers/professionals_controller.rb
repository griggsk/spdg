class ProfessionalsController < ApplicationController
  before_filter :authenticate_user!
  # GET /professional
  # GET /professional.json
  def index
    @professional = Professional.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json =>  @professional }
    end
  end

  # GET /professional/1
  # GET /professional/1.json
  def show
    @professional = Professional.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json =>  @professional }
    end
  end

  # GET /professional/new
  # GET /professional/new.json
  def new
    @professional = Professional.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json =>  @professional }
    end
  end

  # GET /professional/1/edit
  def edit
    @professional = Professional.find(params[:id])
  end

  # POST /professional
  # POST /professional.json
  def create
    @professional = Professional.new(params[:professional])

    respond_to do |format|
      if @professional.save
        format.html { redirect_to @professional, :notice => 'Professional Development was successfully created.' }
        format.json { render :json =>  @professional, :status => :created, :location => @professional }
      else
        format.html { render :action => "new" }
        format.json { render :json =>  @professional.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /professional/1
  # PUT /professional/1.json
  def update
    @professional = Professional.find(params[:id])

    respond_to do |format|
      if @professional.update_attributes(params[:professional])
        format.html { redirect_to @professional, :notice => 'Professional Development was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json =>  @professional.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /professional/1
  # DELETE /professional/1.json
  def destroy
    @professional = Professional.find(params[:id])
    @professional.destroy

    respond_to do |format|
      format.html { redirect_to professional_url }
      format.json { head :no_content }
    end
  end
end
