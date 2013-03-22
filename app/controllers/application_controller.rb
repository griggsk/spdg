class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
  
      # Get roles accessible by the current user
  #----------------------------------------------------
  def accessible_roles
    @accessible_roles = User.roles
  end
 
  # Make the current user object available to views
  #----------------------------------------
  def get_user
    @current_user = current_user
  end
  
   # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    toolkit_index_path
  end
  
  # Overwriting the sign_out redirect path method
  def after_sign_in_path_for(resource)
    stored_location_for(resource) ||
    if resource.is_a?(User) && resource.admin?
      toolkit_index_path
    else
      root
    end
  end
end
