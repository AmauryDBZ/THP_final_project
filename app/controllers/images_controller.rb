class ImagesController < ApplicationController
  def create
    @project = Project.friendly.find_by_slug(params[:slug])
    @project.images.attach(params[:images])
    redirect_to(project_fr_path(@project))
  end
end
