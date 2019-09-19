class Api::V1::OffersController < ApplicationController
	before_action :find_offer, only: [:update]
  def index
    @offers = Offers.all
    render json: @offers
  end

  def update
    @offer.update(offer_params)
    if @offer.save
      render json: @offer, status: :accepted
    else
      render json: { errors: @offer.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def offer_params
    params.permit(:tour_name, :about, :departs, :length, :price)
  end

  def find_offer
    @offer = Offers.find(params[:id])
  end
end
