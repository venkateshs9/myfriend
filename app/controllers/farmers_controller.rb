class FarmersController < ApplicationController
  def index
    @farmers = Farmer.by_active
  end

  def new
    @farmer = Farmer.new
  end

  def edit
    @farmer = Farmer.find(params[:id])
  end

  def create
    @farmer = Farmer.new(farmer_params)
    if @farmer.save
      WebMailer.with(farmer: @farmer).welcome_mail.deliver_now
      redirect_to farmers_path, flash: {notice: "Successfully signed up"}
    else
      render 'new'
    end
  end

  def update
    @farmer = Farmer.find(params[:id])
    if @farmer.update(farmer_params)
      redirect_to farmers_path
    else
      render 'edit'
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
