class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_flat

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new
    @booking.flat = @flat
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def strong_params
    params.require(:booking).permit(:description, :price, :adress)
  end
end
