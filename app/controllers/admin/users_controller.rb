class Admin::UsersController < ApplicationController
  before_action :set_user

  def index
    @users = User.all
  end

  def edit

  end

  def update

  end

  def destroy
    @user.delete
    Project.where(user_id: @user.id).each do |project|
      project.delete
    end
    redirect_to admin_users_fr_path
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

end
