class WelcomeMailer < ActionMailer::Base

   default :from => "http://localhost:3000/"

	def welcome_send(user)
		@user = user
		mail to: user.email, subject: "welcome to my site"
	end
    
 end
 