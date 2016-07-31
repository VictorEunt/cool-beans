class WelcomeMailer < ActionMailer::Base
  default from: "coolbeans.divebar@gmail.com"
  
  
  def vip_email(member)
    attachments.inline['mail-logo.png'] = File.read('app/assets/images/mail-logo.png')
    @member = member
    mail(to: @member.email, subject: 'Thanks for being a Dive VIP')
  end
end

