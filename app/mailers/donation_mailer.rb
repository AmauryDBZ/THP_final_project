class DonationMailer < ApplicationMailer

  def donation_confirm(donation)
    @donation = donation
    @project = @donation.project
    @user_email = @donation.stripe_email
    @url  = 'https://go-os-develop.herokuapp.com/'
    mail(to: @user_email, subject: 'Merci pour ton don !')
  end

  def donation_notification(donation)
    @donation = donation
    @project = @donation.project
    @project_holder = @project.user
    @user_email = @donation.stripe_email
    @url  = 'https://go-os-develop.herokuapp.com/'
    mail(to: @project_holder.email, subject: 'Nouveau don pour ton projet !')
  end

end
