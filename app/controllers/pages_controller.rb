class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @specialties =  Offer.all.map { |offer| offer.specialty }.uniq
    @specialties_option = []
    @specialties.each_with_index do |specialty, index|
      @specialties_option << [specialty, specialty]
    end
  end

  def dashboard
    @offers = current_user.offers
    @bookings = current_user.bookings
    @pending_bookings = Booking.order("start_date").select { |booking| booking.offer.user == current_user }
  end
end
