class SendmailController < ApplicationController
	def sndmail
		email = @params["email"]
	  recipient = email["recipient"]
	  subject = email["subject"]
	  message = email["message"]
      Emailer.deliver_contact(recipient, subject, message)
      return if request.xhr?
      render :text => 'Message sent successfully'
   end

def index
		render :file => 'app\views\sendmail\index.html.erb'
end
end
