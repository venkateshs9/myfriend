class WelcomeController < ApplicationController
  def index
  	@seller = Seller.all
  	@buyer = Buyer.all
  end
end
