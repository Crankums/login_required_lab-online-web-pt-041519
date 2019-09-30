class SessionsController < ApplicationController
  before_action :current_user

  def new
  end

  def create
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
