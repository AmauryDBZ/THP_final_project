class ProjectMailer < ApplicationMailer
  def admin_new_project(project)
    @admins = User.where(is_admin: true)
    @project = project
    @url = "https://go-open-source.herokuapp.com/fr/projets/#{@project.slug}"
    @project_holder = @project.user
    emails = @admins.collect(&:email).join(",")
    mail(to: emails, subject: 'Nouveau projet en attente de validation')
  end

  def project_validated(project)
    @project = project
    @url = "https://go-open-source.herokuapp.com/fr/projets/#{@project.slug}"
    @project_holder = @project.user
    mail(to: @project_holder.email, subject: 'Votre projet a été validé')
  end

  def project_refused(project)
    @project = project
    @url = "https://go-open-source.herokuapp.com/fr/projets/#{@project.slug}"
    @project_holder = @project.user
    mail(to: @project_holder.email, subject: 'Votre projet a été refusé')
  end
end
