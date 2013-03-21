class ToolkitController < ApplicationController
   before_filter :authenticate_user!, :except => ['index']

 
  def index
  end
  
  def admin
     authorize! :index, @user, :message => 'Not authorized as an administrator.'
  end
  
end
