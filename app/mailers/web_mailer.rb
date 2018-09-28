class WebMailer < ApplicationMailer

	def welcome_mail
		@farmer = params[:farmer]
		@url = 'https://myfriend.com'
		from = 'customer@myfriend.com'
		mail(from: from, to: @farmer.email, subject: 'Welcome to MyFriend')
	end

end
