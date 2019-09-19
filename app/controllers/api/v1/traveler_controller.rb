class Api::V1::TravelersController < ApplicationController
	before_action :find_traveler, only: [:update]
  def index
    @travelers = Traveler.all
    render json: @travelers
  end

  def update
    @traveler.update(traveler_params)
    if @traveler.save
      render json: @traveler, status: :accepted
    else
      render json: { errors: @traveler.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def traveler_params
    params.permit(:name, :passion)
  end

  def find_traveler
    @traveler = Traveler.find(params[:id])
  end
end
