class SessionsController < ApplicationController
  
	def new
	end

  # Log in
  def create

  	user = User.find(:first, conditions: [ 'lower(username) = ?', params[:username].downcase ])

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to :back
		else
			redirect_to :back, alert: 'Invalid username or password'
		end
  end

  # Log out
  def destroy
  	session[:user_id] = nil
  	redirect_to :back
  end
end
