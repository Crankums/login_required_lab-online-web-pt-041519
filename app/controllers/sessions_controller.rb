class SessionsController < ApplicationController
  before_action :current_user

  def new
  end

  def create
    if params[:name]
      session[:name] = params[:name]
      redirect_to '/'
    redirect_to '/sessions/login'
  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end

  private

  def current_user
    session[:name]
  end
end
