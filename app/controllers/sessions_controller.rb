class SessionsController < ApplicationController

  def destroy
    session.delete :name
  end
end
