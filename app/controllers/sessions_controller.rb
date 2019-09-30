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

  private

  def current_user
    @user = User.find_by(id: params[:id])
  end
end
