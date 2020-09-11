class ProjectsController < ApplicationController
  include ProjectsHelper
  before_action :cannot_see_before_validation, only: [:show]
  before_action :cannot_edit_others_projects, only: [:edit]
  before_action :set_project
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @projects = Project.all
    @categories = Category.all
  end

  def show
    @project.update(clicks: @project.clicks += 1)
    @project_holder = User.find(@project.user_id)
    @donations = Donation.where(project_id: @project.id)
    @total = ((@project.daily_time_spent_on_project_per_developer)*(@project.number_of_developers_on_project))*5
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    @project.clicks = 0
    @project.money_earned = 0
      if @project.save
        flash[:success] = "Merci ! Nous allons vérifier les informations de votre projet"
        redirect_to :controller => 'projects', :action => 'index'
      else
        flash[:danger] = "Erreur(s) à rectifier pour valider votre projet : #{@project.errors.full_messages.each {|message| message}.join('')}"
        render :action => 'new'
      end
  end

  def destroy
    @project.delete
    Donation.where(project_id: @project.id).each do |donation|
      donation.delete
    end
    redirect_to root_path
  end

  def edit
  end

  def update
    if @project.update(project_params)
      @project.update(validated: nil)
      flash[:success] = "Merci ! Nous allons vérifier les nouvelles informations de votre projet"
      redirect_to :controller => 'projects', :action => 'index'
    else
      flash[:danger] = "Erreur(s) à rectifier pour valider votre projet : #{@project.errors.full_messages.each {|message| message}.join('')}"
      render :action => 'edit'
    end
  end

  private

  def set_project
    @project = Project.friendly.find_by_slug(params[:slug])
  end

  def project_params
    params.require(:project).permit(:name, :daily_time_spent_on_project_per_developer, :pitch, :functionalities, :value_of_project, :number_of_developers_on_project, :licence, :cover, images: [])
  end
end
