class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to root_path
  end


  def show

  end

  def edit
    # stretch
  end

  def update
    # stretch
  end

  def destroy
    # stretch
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password_digest)
  end


end
