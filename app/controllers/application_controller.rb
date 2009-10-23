# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
<<<<<<< HEAD
    
  helper_method :current_user
  
  private
  
  def current_user_session
	@current_user_session = UserSession.find
    return @current_user_session if defined?(@current_user_session)
  end
  
=======
 
  helper_method :current_user

  private  
  
  def current_user_session
	@current_user_session = UserSession.find
    return @current_user_session if defined?(@current_user_session)
  end

>>>>>>> 586ac0c2770e732e2e09eac8825e95d8de361fb8
  def current_user
	@current_user = current_user_session && current_user_session.record
    return @current_user if defined?(@current_user)
  end
end
