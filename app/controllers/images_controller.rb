class ImagesController < ApplicationController
  def create
    @project = Project.friendly.find_by_slug(params[:slug])
    @project.images.attach(params[:images])
    redirect_to(project_fr_path(@project))
  end

  def show
    @project = Project.friendly.find_by_slug(params[:slug])
    puts "+++++++++++++++++++++++++++++++++++++++ Dans la def show d'images"
    respond_to do |format|
      format.js{
        puts "-------------------------"
        puts "Je suis en JS"
      }
    end
  end
end
