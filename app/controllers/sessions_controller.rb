# frozen_string_literal: true

class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:user][:email])
    if user&.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:alert] = message
      redirect_to signin_path
    end
  end

  def destroy
    session.delete :user_id if session[:user_id]
    redirect_to root_path
  end

  def new
    @user = User.new
  end

  def message
    "Invalid name or password.  Please try again."
  end
end
