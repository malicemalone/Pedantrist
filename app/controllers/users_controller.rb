class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(username: params[:username], email: params[:email])
    if @user.save
      @user.password = params[:password_hash]
      redirect_to user_path(user)
    end
  end

  def show
    @user = User.find_by(params[:username])
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    @user = User.find(session[:user_id])
    @user.update_attributes(params)
    if @user.save
      redirect_to users_path
    end
  end

  def destroy
  end

end
