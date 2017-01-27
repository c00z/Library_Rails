class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create

  end

  def destroy

  end

  private
    def owner_params
      params.require(:owner).permit(:email, :password)

    end



end
