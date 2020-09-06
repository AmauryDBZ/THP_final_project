class CoverController < ApplicationController
  def create
    @project = Project.find_by_slug(params[:project_slug])
    @project.cover.attach(params[:cover])
    redirect_to(project_fr_path(@project))
  end
end
