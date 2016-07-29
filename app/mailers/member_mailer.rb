class MemberMailer < ActionMailer::Base
  default to: "coolbeans.divebar@gmail.com",
          bcc: Member.all.map(&:email),
          from: "coolbeans.divebar@gmail.com"
  
  
  def promotion_email(members)
    attachments.inline['mail-logo.png'] = File.read('app/assets/images/mail-logo.png')
    @manager_notes = ManagerNote.last
    @members = members
    mail(subject: @manager_notes.subject)
  end
end
