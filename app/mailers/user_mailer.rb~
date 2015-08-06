class UserMailer < ActionMailer::Base
  default from: "mittalvi89@gmail.com"

  # new user registration 
  def confirmation_instructions(email, opts)
    @email = opts[:email]
    @password = opts[:password]
    @application = t("general.app_title")
    mail(:to => "#{email}", :subject => t("mail.registration_confirmation.confirm_your_email_to_start"))
  end

  # forgot password
  def forgot_password_confirmation(email, subject, opts)
    #@username = opts[:username]
    @new_pass = opts[:new_pass]
    @application = t("general.app_title")
    mail(:to => "#{email}", :subject => subject, :content_type => "text/html")
  end
end
