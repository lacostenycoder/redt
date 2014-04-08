class UserController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end

  def new
    @user = User.new(user_params)
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
