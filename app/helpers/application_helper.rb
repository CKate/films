module ApplicationHelper #ensure that the helper method is available to all controllers
	def logged_in?
		if session[:user_id].nil?
			return
		else
			@current_user = User.find_by_id(session[:user_id]) #@current_user is available to all views.. 
		end
	end
end
