class UsersController < ApplicationController

  def index
    @user = User.find(session[:user_id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(username: params["user"][:username], email: params["user"][:email])
    @user.password=(params["user"][:password_hash])
    if @user.save
      session[:user_id] = @user.id
      redirect_to users_path
    else
      session[:errors] = "Email or username already taken"
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
    new_username = params["user"]["username"]
    new_password = params["user"]["password_hash"]
    if !!new_username
      @user.update_attributes(username: new_username)
      if @user.save
        session[:succ_username] = "Username updated!"
      else
        session[:errors] = "Too short or already in use"
      end
        redirect_to edit_user_path(@user)
    end
    if !!new_password
      @user.update_attributes(password: new_password)
      if @user.save
        @user.password=(new_password)
        session[:succ_pass] = "Password updated!"
      end
        redirect_to edit_user_path(@user)
    end

  end

  def destroy
    p "GOT HERE"
    session.delete(:user_id)
    redirect_to welcome_index_path
  end

end

