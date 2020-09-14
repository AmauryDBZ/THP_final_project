class AdminExplanationsController < ApplicationController
  def new
    @explanation = AdminExplanation.new
    @project = Project.find(params[:project])
  end

  def create
    @projet = Project.find(params[:project])
    @explanation = AdminExplanation.create(content: params[:admin_explanation][:content], project: @project)
    @projet.update(validated: false)
    redirect_to project_fr_path(@projet)
  end

end
