class ProjectMailer < ApplicationMailer
  def admin_new_project(project)
    @admins = User.where(is_admin: true)
    @url = 'https://go-os-develop.herokuapp.com/' 
    @project = project
    @project_holder = @project.user
    @admin = ""
    @admins.each do |admin|
      @admin = admin
      mail(to: admin.email, subject: 'Nouveau projet en attente de validation')
    end
  end
end
