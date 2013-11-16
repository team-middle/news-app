class SessionsController < ApplicationController

  def create
    auth = request.env['omniauth.auth']
    user = User.from_omniauth(auth)
    session[:user_id] = user.id
    session[:token] = auth[:credentials][:token]
    redirect_to root_path, notice: "Signed in"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Signed out."
  end

end
