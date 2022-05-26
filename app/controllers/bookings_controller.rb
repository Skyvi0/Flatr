class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]


  def new
    @flat = Flat.find(params[:id])
    @booking = Booking.new
  end


  def create
    @booking = Booking.find(params[:id])
    @booking.save
  end

  private

  def strong_params
    params.require(:booking).permit(price
  end
end
