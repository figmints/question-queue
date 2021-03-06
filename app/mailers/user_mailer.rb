class UserMailer < ApplicationMailer
  default from: 'noreply@figmints.com'

  def welcome_email(user)
    @user = user
    @url = 'http://questionqueue.com/login'
    mail(to: @user.email, subject: 'Welcome to Question Queue')
  end
end
