# Preview all emails at http://localhost:3000/rails/mailers/welcome_mailer
class WelcomeMailerPreview < ActionMailer::Preview
  def vip_email_preview
    WelcomeMailer.vip_email(Member.first)
  end
end
