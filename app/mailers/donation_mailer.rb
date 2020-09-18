class DonationMailer < ApplicationMailer

  def donation_confirm(donation)
    @donation = donation
    @project = @donation.project
    @user_email = @donation.stripe_email
    @url  = 'https://go-open-source.herokuapp.com/'
    mail(to: @user_email, subject: 'Merci pour ton don !')
  end

  def donation_notification(donation)
    @donation = donation
    @project = @donation.project
    @project_holder = @project.user
    @user_email = @donation.stripe_email
    @url  = 'https://go-open-source.herokuapp.com/'
    mail(to: @project_holder.email, subject: 'Nouveau don pour ton projet !')
  end

  def donation_transfer(donation)
    @donation = donation
    @project = @donation.project
    @project_holder = @project.user
    @bankdetails = @donation.project.user.bank_details.last
    @url  = 'https://go-open-source.herokuapp.com/'
    mail(to: 'lecomptablegoo@yopmail.com', subject: 'Nouveau transfert')
  end

end
