class UserMailer < ApplicationMailer
  default from: 'greetings@well.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'

    mail(to: @user.email,
         subject: 'Welcome to My Awesome Site',
         template_path: 'user_mailer',
         template_name: 'welcome_email.html.erb')

  end
end
