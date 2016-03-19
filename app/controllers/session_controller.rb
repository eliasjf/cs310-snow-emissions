class SessionController < ApplicationController
  def create
    # Create new user session
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to '/'
  end

  def destroy
    # Destroy user session
    session[:user_id] = nil
    redirect_to '/'
  end
end