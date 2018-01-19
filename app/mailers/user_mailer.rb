class UserMailer < ApplicationMailer
	default from: "'donotreply@babymamagermany.herokuapp.com'"

	def contact_form(email, name, message)
	@message = message
	mail(from: email,
		to: 'email@babymamagermany.herokuapp.com',
		subject: "A new contact form message from #{name}")
	end
end

