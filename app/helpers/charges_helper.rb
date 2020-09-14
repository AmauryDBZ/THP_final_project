module ChargesHelper

  def it_is_validated?
    @project = Project.friendly.find_by_slug(params[:project_id])
    unless @project.validated?
      redirect_to root_path
      flash[:danger] = "Ce projet ne peux pas encore recevoir de don"
    end
  end
end
