class MemberMailer < ActionMailer::Base
  default to: Member.all.map(&:email),
          from: "coolbeans.divebar@gmail.com"
  
  
  def sample_email(members)
    @manager_notes = ManagerNote.last
    @members = members
    mail(subject: @manager_notes.subject)
  end
end
