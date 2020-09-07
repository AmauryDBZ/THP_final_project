class DonationMailer < ApplicationMailer

  def donation_confirm(donation)
    @donation = donation
    @project = @donation.project
    @user_email = @donation.stripe_email
    @url  = 'https://go-os-develop.herokuapp.com/'
    mail(to: @user_email, subject: 'Merci pour votre don!')
  end

end
