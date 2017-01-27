class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create

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


end
