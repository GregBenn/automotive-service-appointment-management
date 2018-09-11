# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in?
    return if current_user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def require_logged_in
    redirect_to root_path unless current_user
  end
end
