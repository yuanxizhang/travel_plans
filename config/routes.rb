Rails.application.routes.draw do
	namespace :api do
     namespace :v1 do
        resources :plans, only: [:index, :show, :update]
        resources :offers, only: [:index, :show, :update]
        resources :travelers, only: [:index, :show, :update]
        resources :providers, only: [:index, :show, :update]
     end
  end
end
