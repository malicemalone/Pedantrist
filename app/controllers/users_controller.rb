class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(username: params["user"][:username], email: params["user"][:email])
    @user.password=(params["user"][:password_hash])
    if @user.save
      redirect_to user_path(@user)
    else
      session[:errors] = "Email or usernamme already taken"
      redirect_to new_user_path
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

