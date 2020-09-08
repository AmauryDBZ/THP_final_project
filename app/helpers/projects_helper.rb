module ProjectsHelper
  def cannot_see_before_validation
    if current_user 
      if !@project.validated && current_user != @project.user && !current_user.is_admin 
        flash[:danger] = "Vous ne pouvez pas accéder à cette page"
        redirect_to root_path
      end
    elsif !@project.validated
      flash[:danger] = "Vous ne pouvez pas accéder à cette page"
      redirect_to root_path
    end
  end
end
