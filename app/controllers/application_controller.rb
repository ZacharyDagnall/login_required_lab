class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def start
    if session[:name].blank?
      redirect_to "/login"
    else
      redirect_to "/homepage"
    end
  end

  def current_user
    session[:name]
  end

end
