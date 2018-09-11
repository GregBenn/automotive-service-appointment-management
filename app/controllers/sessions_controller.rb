# frozen_string_literal: true

class SessionsController < ApplicationController
  def create
    user = User.find_by_id(params[:user][:email])
    session[:user_id] = user.id
    redirect_to user_path(user)
  end

  def destroy
    session.delete :user_id if session[:user_id]
    redirect_to root_path
  end

  def new
    @user = User.new
  end
end
