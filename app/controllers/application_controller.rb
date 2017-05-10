class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
     # session[:user_id]
     return 1
  end
  helper_method :current_user

  def authenticate_user!
    redirect_to '/login' unless current_user
  end
  
end
