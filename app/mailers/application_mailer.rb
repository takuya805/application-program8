class ApplicationMailer < ActionMailer::Base
  default from: 'no-replay@gmail.com'
  layout 'mailer'
   def complete_mail(user)
    @user = user
    @url = "http://localhost:3000/users/#{@user.id}"
    mail(subject: "COMPLETE join your address" ,to: @user.email)
   end
end
