Rails.application.routes.draw do
	namespace :api do
     namespace :v1 do
        resources :plans, only: [:index, :show, :create, :update]
        resources :offers, only: [:index, :show,  :create, :update]
        resources :travelers, only: [:index, :show,  :create, :update]
        resources :providers, only: [:index, :show,  :create, :update]
     end
  end
end
