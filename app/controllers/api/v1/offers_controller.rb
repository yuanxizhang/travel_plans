class Api::V1::OffersController < ApplicationController
	before_action :find_offer, only: [:show, :update]

  def index
    offers = Offer.all
    render json: offers
  end

  def new 
    offer = Offer.new
  end

  def show  
    render json: offer
  end

  def create
    offer = Offer.new(offer_params)
    
    if offer.valid?
      offer.save
      render json: offer, status: :accepted
    else 
      render json: { errors: offer.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    offer.update(offer_params)
    if offer.save
      render json: offer, status: :accepted
    else
      render json: { errors: offer.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    offer = Offer.find_by(:id => params[:id])
    offer.destroy
    render json: { message: "removed" }, status: :ok
  end

  private

  def offer_params
    params.permit(:tour_name, :about, :departs, :length, :price, :likes)
  end

  def find_offer
    offer = Offer.find(params[:id])
  end
end
