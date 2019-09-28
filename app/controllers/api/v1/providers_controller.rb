class Api::V1::ProvidersController < ApplicationController
	before_action :find_provider, only: [:update]
  def index
    @providers = Provider.all
    render json: {status: 'SUCCESS', message: 'Loaded all providers', data: providers}, status: :ok
  end

  def new 
    @provider = Provider.new
  end

  def show  
    render json: @provider
  end

  def create
    @provider = Provider.new(provider_params)
    
    if @provider.valid?
      @provider.save
      render json: @provider, status: :accepted
    else 
      render json: { errors: @provider.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @provider.update(provider_params)
    if @provider.save
      render json: @provider, status: :accepted
    else
      render json: { errors: @provider.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def provider_params
    params.permit(:name, :website)
  end

  def find_provider
    @provider = Provider.find(params[:id])
  end
end
