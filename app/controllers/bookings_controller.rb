class BookingsController < ApplicationController
before_action :set_offer, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    @booking.user = current_user
    @booking.confirmation = 10
    if @booking.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.update(confirmation: :accepted)
    redirect_to offers_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.update(confirmation: :declined)
    redirect_to offers_path
  end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
