class ApplicationMailer < ActionMailer::Base
  default from: 'goopensource@protonmail.com'
  layout 'mailer'
  @url = 'https://go-open-source.herokuapp.com/'
end
