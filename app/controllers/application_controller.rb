class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :user

  private

  def user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def authenticate
    unless User.find_by_id(session[:user_id])
      redirect_to sign_in_url, :notice => "Please log in"
    end
  end
  
  def authorize
    unless @list.user_id == user.id
      flash[:alert]  = "You are not authorized to access this task"
      redirect_to sign_in_url, :status => 401
    end
  end
  
end