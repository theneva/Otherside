class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  # Method for ensuring the user is logged in; for use by before filters in controllers
  def login_required
  	redirect_to(root_url, notice: 'You have to be signed in to do that!') unless current_user
  end

private
  
  # The user currently logged in
  def current_user
  	@current_user || User.find(session[:user_id]) if session[:user_id]
	end
end
