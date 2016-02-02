class SessionsController < ApplicationController
  def new
  end

  def create
	user = User.find_by_email(params[:email])
	if user && user.authenticate(params[:password])
		session[:user_id] = user.id #stores the id in the session
		redirect_to user #display the user/show view
	else
		flash.now[:error] = "Invalid name/password combination"
		render 'new' #shows the login page
	end
  end

  def destroy
	if logged_in?
		session[:user_id] = nil #nil is equivalent to null in java
	else
		flash[:notice] = "You need to log in first"
	end
	redirect_to login_path #redirect to a method
  end
  
end
