module ProjectsHelper
  def cannot_see_before_validation
    @project = Project.friendly.find_by_slug(params[:slug])
    if current_user
      if !@project.validated && current_user != @project.user && !current_user.is_admin
        redirection()
      end
    elsif !@project.validated
      redirection()
    end
  end

  def cannot_edit_others_projects
    @project = Project.friendly.find_by_slug(params[:slug])
    if current_user
      if current_user != @project.user && !current_user.is_admin
        redirection()
      end
    else
      redirection()
    end
  end

  def redirection
    flash[:danger] = "Vous ne pouvez pas accéder à cette page"
    redirect_to root_path
  end

  def monthly_donation
    @last_month_donation = []
    puts '------------------ project helper ------------------------'
    puts Donation.where(project_id: @project.id)
    Donation.where(project_id: @project.id).each do |d|
      puts "created at #{d.created_at}"
      puts Time.now
      if Time.now - d.created_at < (2*24*3600)
        @last_month_donation << d
      end
      puts '--------------------------'
      puts @last_month_donation
    end
    return @last_month_donation
  end
end
