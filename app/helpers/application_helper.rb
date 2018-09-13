# frozen_string_literal: true

module ApplicationHelper
  def logged_in?
    return true if current_user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
