class UsersController < ApplicationController

  before_action :require_login, only: [:show]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    render :show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    login(@user)
    redirect_to @user
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
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_digest)
  end


end
