class BuyersController < ApplicationController

	def new
		@buyer = Buyer.new
	end

	def create
		@buyer = Buyer.new(buyer_params)
    	if @buyer.save
      		redirect_to root_url, flash: {notice: "Buyer Successfully Signed Up"}
      		#WebMailer.with(seller: @seller).welcome_mail.deliver_now
    	else
      		render 'new'
    	end
	end

	private

  	def buyer_params
    	params.require(:buyer).permit(:firstname, :lastname, :email, :mobile, :address)
  	end

end