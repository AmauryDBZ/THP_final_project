class ProjectsController < ApplicationController
  before_action :set_project
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @projects = Project.all
  end

  def show
    @project.update(clicks: @project.clicks + 1)
    @project_holder = User.find(@project.user_id)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(
      user_id: current_user.id,
      name: params[:name],
      pitch: params[:pitch],
      functionalities: params[:functionalities],
      value_of_project: params[:value_of_project],
      number_of_developers_on_project: params[:number_of_developers_on_project],
      daily_time_spent_on_project_per_developer: params[:daily_time_spent_on_project_per_developer])
      if @project.save
        flash[:success] = "Merci ! Nous allons vérifier les informations de votre projet"
        redirect_to :controller => 'projects', :action => 'index'
      else
        flash[:danger] = "Erreur(s) à rectifier pour valider votre projet : #{@project.errors.full_messages.each {|message| message}.join('')}"
        render :action => 'new'
      end
  end

  private

  def set_project
    @project = Project.friendly.find_by_slug(params[:slug])
  end
end
