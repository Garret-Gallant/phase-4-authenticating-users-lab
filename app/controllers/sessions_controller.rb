class SessionsController < ApplicationController
  # log out
  def create
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    render json: user
  end

  # log in
  def destroy
    session.delete :user_id
    head :no_content
  end

end
