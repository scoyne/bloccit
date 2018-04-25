class UsersController < ApplicationController

# NEW controller
  def new
    @user = User.new
  end

# CREATE controller
  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      flash[:notice] = "Welcome to Bloccit #{@user.name}!"
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error creating your account. Please try again."
      render :new
    end
  end

# CONFIRM action
  def confirm
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
  end

# User params
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  # This makes `user_params()` available in the view.
    helper_method :user_params

end
