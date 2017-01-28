class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper


  private
  def require_login
    if @user
      login(@user)
      redirect_to @user
    else
      redirect_to login_path
    end
  end


end
