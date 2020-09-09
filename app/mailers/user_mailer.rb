class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    @url  = 'https://go-open-source.herokuapp.com/' 
    mail(to: @user.email, subject: 'Bienvenue chez nous !')
  end



end
