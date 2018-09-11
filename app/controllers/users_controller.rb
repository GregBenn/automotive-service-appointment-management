# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :require_logged_in, only: %i[index show edit update]
  before_action :find_user, only: %i[index show edit update]

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to new_user_path
    end
  end

  def show; end

  def edit; end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
