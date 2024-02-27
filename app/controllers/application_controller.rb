class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id] # if @current_user isn't nil then return it, otherwise find the user.
  end

  def logged_in?
    !!current_user #  !! turning the object into a boolean
  end

end
