class FarmersController < ApplicationController
  def index
    @farmers = Farmer.all
  end

  def new
    @farmer = Farmer.new
  end

  def create
    @farmer = Farmer.new(farmer_params)
    if @farmer.save
      redirect_to action: index
    else
      render new
    end
  end

  def show
    @farmer = Farmer.find(params[:id])
  end

  private

  def farmer_params
    params.require(:farmer).permit(:firstname, :lastname, :email, :mobile, :address)
  end
end
