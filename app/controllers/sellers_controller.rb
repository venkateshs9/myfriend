class SellersController < ApplicationController


	def new
		@seller = Seller.new
	end

	def create
		@seller = Seller.new(seller_params)
    	if @seller.save
      		redirect_to root_url, flash: {notice: "Seller Successfully Signed Up"}
      		#WebMailer.with(seller: @seller).welcome_mail.deliver_now
    	else
      		render 'new'
    	end
	end

	private

  	def seller_params
    	params.require(:seller).permit(:firstname, :lastname, :email, :mobile, :address)
  	end

end