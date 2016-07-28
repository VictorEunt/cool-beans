class MemberMailer < ActionMailer::Base
  default from: "coolbeans.divebar@gmail.com"
  
  
  def sample_email(member)
    @manager_notes = ManagerNote.first
    @member = member
    mail(to: @member.email, subject: @manager_notes.subject)
  end
end
