class SessionsController < ApplicationController

  def new
  end

  def create
    if user = User.authenticate_with_credentials(params[:email], params[:password])
      # set user_id to cookie
      session[:user_id] = user.id
      # redirect to homepage
      redirect_to '/'
    else
      redirect_to '/login', notice: "Incorrect email or password, try again."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
