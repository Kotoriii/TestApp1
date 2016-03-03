class UserMailer < ApplicationMailer
	default from: "hello@bikeberlin.com"

	def contact_form(email, name, message)
		@message = message
		mail(from: email,
			to: "cmackm@hotmail.com",
			subject: "A new contact from message from #{name}")
	end
end
