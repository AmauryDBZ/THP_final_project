class ApplicationMailer < ActionMailer::Base
  default from: 'goopensource@protonmail.com'
  layout 'mailer'
  @url = 'https://go-os-develop.herokuapp.com/'
end
