class ProjectsController < ApplicationController
  before_action :set_project

  def index
    @projects = Project.all
  end

  def show
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
        redirect_to :controller => 'projects', :action => 'index'
      else
        render :action => 'new'
      end
  end

  private 

  def set_project
    @project = Project.friendly.find_by_slug(params[:slug])
  end

  def edit

  end
end
