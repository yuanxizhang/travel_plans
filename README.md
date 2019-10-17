This is a Rails API that helps you find vacation package offers and pricing for your travel plans

Here are the tools you might need to build a Rails API:

- Ruby version: 2.6

- Rails version: 6.0

- Database: PostgreSQL

Instructions to craete the Rails backend of the application:

###Step 1: Build the models for Rails REST API backend. 

In your terminal enter the following command:

rails new travel_plans --database=postgresql --api

Create the models: Plan, Offer, Provider

rails g model Traveler name, passion
rails g model Plan place, adventure
rails g model Provider name, website
rails g model Offer tour_name, about, departs, length, price

###Step 2: Create the serializers: 

rails g serializer traveler
rails g serializer plan
rails g serializer provider
rails g serializer offer

####Step 3: Create the controllers: 

rails g controller api/v1/Travelers
rails g controller api/v1/Plans
rails g controller api/v1/Providers
rails g controller api/v1/Offers

####Step 4: Define routes in config/routes.rb:

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
    	resources :travelers, only: [:index, :new, :show, :update]
      resources :plans, only: [:index, :new, :show, :update]
      resources :providers, only: [:index, :show, :update]
      resources :offers, only: [:index, :new, show, :update]
    end
  end
end

####Step 5: create migration tables

rails db:create && rails db:migrate


