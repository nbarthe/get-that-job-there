class UsersController < ApplicationController
  def index
    @users = User.where(city: params[:city])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def edit
  end
end
