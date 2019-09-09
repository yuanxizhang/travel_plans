# README

## Travel Plans: a Rails application that helps you find vacation package offers and pricing for your travel plans

Things you might need to build an app like this:

* Ruby version: 2.6

* Rails version: 6.0

* Database: PostgreSQL

##Instructions to craete the front-end and backend of the application

###Step 1: build a Rails REST API backend. 

####In your terminal enter the following command:

rails new travel_plans --database=postgresql --api

####Define routes in config/routes.rb:

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :plans, only: [:index, :update]
      resources :offers, only: [:index, :update]
    end
  end
end

####Create two models: Plan, Offer

rails g model Plan name:string, created_by:string
rails g model Offer offered_by:string, departs:string, length:string, price_from:decimal

####Create two serializers: 

rails g serializer plan
rails g serializer offer

####Create two controllers: 

rails g controller api/v1/Plans
rails g controller api/v1/Offers


