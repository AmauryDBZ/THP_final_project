class Admin::UsersController < ApplicationController
  before_action :set_user, except: [:index]

  def index
    @users = User.all
  end

  def edit

  end

  def update
    if @user.update(user_params)
      flash[:success] = "Profil modifié !"
      redirect_to admin_users_fr_path
    else
      flash[:alert] = "Le profil n'a pas pû être modifié #{@user.errors.full_messages}"
      render :action => 'edit'
    end
  end

  def destroy
    @user.delete
    Project.where(user_id: @user.id).each do |project|
      project.delete
    end
    respond_to do |format|
      format.html {
        redirect_to admin_users_fr_path
      }
      format.js { }
    end

  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :date_of_birth, :personal_description, :professional_background, :link_of_github, :link_of_linkedin)
  end

end
