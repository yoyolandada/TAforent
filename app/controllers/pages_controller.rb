class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @offers = current_user.offers
    @bookings = current_user.bookings
    @pending_bookings = Booking.select { |booking| booking.offer.user == current_user }
  end
end
