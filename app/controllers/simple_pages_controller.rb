class SimplePagesController < ApplicationController
  def index
  end

  def landing_page
  	@products = Product.limit(3)
  end




def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  UserMailer.contact_form(@email, @name, @message).deliver_now
end

ActionMailer::Base.mail(from: 'from@domain.com', to: 'to@domain.com', 
	subject: "Welcome to My Awesome Site", body: 'I am the email body.').deliver_now

end

