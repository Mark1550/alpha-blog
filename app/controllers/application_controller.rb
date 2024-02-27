# frozen_string_literal: true

# Application Controller
class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id] # if @current_user isn't nil then return it, otherwise find the user.
  end

  def logged_in?
    !!current_user #  !! turning the object into a boolean
  end

  def require_user
    if !logged_in?
      flash[:alert] = 'You must be logged in to perform that action'
      redirect_to login_path
    end
  end
end
