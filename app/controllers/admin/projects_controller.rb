class Admin::ProjectsController < ApplicationController
  before_action :set_project
  before_action :check_if_admin

  def index
    @projects = Project.all
  end

  def show
  end

  def edit
    @project = Project.friendly.find_by_slug(params[:id])
    respond_to do |format|
        format.js
      end
  end

  def update
    @project = Project.friendly.find_by_slug(params[:id])
    puts "********************************************"
    puts @project
    redirect_to admin_project_fr_path(@project)
  end

  def destroy
    @project = Project.friendly.find_by_slug(params[:id])
    @project.delete
    redirect_to root_path
  end

  private

  def set_project
    @project = Project.friendly.find_by_slug(params[:slug])
  end

  def check_if_admin
    if current_user == nil
      flash[:danger] = "Vous devez vous connecter à un compte administrateur pour accéder à cette page"
      redirect_to new_user_session_path
    elsif current_user.is_admin == false || current_user.is_admin == nil
      flash[:danger] = "Seul un administrateur peut accéder à cette page"
      redirect_to projects_path
    end
  end

end
