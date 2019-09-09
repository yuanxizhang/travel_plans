# README

## Travel Plans: a Rails REST API that helps you find vacation options and pricing for your vacation plans

Things you might need to build an app like this:

* Ruby version: 2.6

* Rails version: 6.0

* Database: PostgreSQL

###Instructions

####Step 1: In your terminal enter the following command:

rails new travel_plans --database=postgresql --api

####Step 2: Create rwo models: Plan, Offer

rails g model Plan name:string, created_by:string
rails g model Offer offered_by:string, departs:string, length:string