class SessionsController < ApplicationController
  before_action :current_user

  def new
  end

  def create
    if params[:name]
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/sessions/login'
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end
end
