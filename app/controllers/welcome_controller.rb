class WelcomeController < ApplicationController

	def index
		@user = User.find_by(session[:user_id])
	end

	def new
		@user = User.new
	end

	#makes use of welcome controller to log in instead of making new sessions controller
	def create
		@user = User.find_by(username: params["username"])
		if @user && @user.password == params["password_hash"]
			session[:user_id] = @user.id
			redirect_to users_path
		else
			session[:errors] = "User not found. Sign up "
			render new_welcome_path
		end
	end
end
