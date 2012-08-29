class UsersController < ApplicationController
  # before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @source = User.find(params[:id])
    current_user.sources.create @source

    redirect_to user_path @source
  end
end
