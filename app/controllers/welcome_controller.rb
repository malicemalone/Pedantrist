class WelcomeController < ApplicationController

	def index
		@user = User.find_by(session[:user_id])
	end

	def new
		@user = User.new
	end

	def create
		puts params
		puts params["user"][:username]
		@user = User.find_by(username: params["user"][:username])
		if !!@user && @user.password == @user.password_hash
			redirect_to welcome_path
		else
			redirect_to welcome_path
		end
	end
end
