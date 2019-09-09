Rails.application.routes.draw do
	namespace :api do
     namespace :v1 do
        resources :plans, only: [:index, :show, :update]
        resources :offers, only: [:index, :update, :update]
     end
  end
end
