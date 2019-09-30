class SessionsController < ApplicationController

  def destroy
    if session[:name]
      session.delete :name
    end
  end
end
