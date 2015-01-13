class UsersController < ApplicationController
  def create
    username = params[:user][:username]
    session[:current_username] = username
    user = User.new username: username
    if not user.valid?
      raise "Oops"
    end
    # don't bother with DB

    redirect_to root_path
  end
end
