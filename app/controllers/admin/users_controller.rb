class Admin::UsersController < ApplicationController

  def index
    @users = User.all
  end

  def edit

  end

  def update

  end

  def destroy
    @user = User.friendly.find_by_slug(params[:id])
    @user.delete
    Project.where(user_id: @user.id).each do |project|
      project.delete
    end
    redirect_to admin_users_fr_path
  end
end
