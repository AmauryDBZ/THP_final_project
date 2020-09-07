class ProjectMailer < ApplicationMailer
  def admin_new_project(project)
    @admins = User.where(is_admin: true)
    @project = project
    @url = 'https://go-os-develop.herokuapp.com/fr/projets/#{@project.slug}'
    @project_holder = @project.user
    emails = @admins.collect(&:email).join(",")
    mail(to: emails, subject: 'Nouveau projet en attente de validation')
  end
end
