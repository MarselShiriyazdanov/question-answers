class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_path, notice: 'Successfully logged in'
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Successfully logged out'
  end
end