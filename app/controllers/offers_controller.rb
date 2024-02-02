class OffersController < ApplicationController
  before_action :set_offer, only: [:show]

  def index
    if params[:specialty]
      @offers = Offer.where(specialty: params[:specialty])
    else
      @offers = Offer.all
    end
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:specialty, :price, :availble)
  end
end
