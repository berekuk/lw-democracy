module ApplicationHelper
  def current_user
    session[:current_username]
  end
end
