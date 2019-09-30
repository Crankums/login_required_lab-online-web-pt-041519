class SessionsController < ApplicationController

  def new
  end

  def create
  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end
end
