class HomeController < ApplicationController
   def index
    @initiatives = Initiative.all(:joins => :state, :order => 'states.abbrev')
    @states = State.all
    @topics = Topic.all
    @populations = Population.all
    @stages = Stage.all
    @pds = Professionaldevelopment.all
   

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json =>  @initiatives }
    end
  end
  
  def show
    @initiative = Initiative.find(params[:id])
    @initiatives = Initiative.where(" state_id = ? AND id != ? ",@initiative.state.id, @initiative.id )
    @breadcrumbs = true;
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json =>  @initiative }
    end
  end
end
