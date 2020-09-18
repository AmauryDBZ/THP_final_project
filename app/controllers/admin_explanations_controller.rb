class AdminExplanationsController < ApplicationController
  def new
    @explanation = AdminExplanation.new
    @project = Project.find(params[:project])
  end

  def create
    @project = Project.find(params[:project])
    @explanation = AdminExplanation.create(content: params[:admin_explanation][:content], project: @project)
    @project.update(validated: false)
    redirect_to project_fr_path(@project)
  end

end
