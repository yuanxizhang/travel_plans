Rails.application.routes.draw do
	namespace :api do
     namespace :v1 do
        resources :plans, only: [:index, :new, :create, :show]
        resources :offers, only: [:index, :new, :create, :show]
        resources :travelers, only: [:index, :new, :create, :show]
        resources :providers, only: [:index, :new, :create, :show]
     end
  end
end
