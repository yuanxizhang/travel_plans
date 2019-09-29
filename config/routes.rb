Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :travelers, only: [:index, :new, :show, :create, :update]
      resources :plans, only: [:index, :new, :show, :create, :update]
      resources :providers, only: [:index, :new, :show, :create, :update]
      resources :offers, only: [:index, :new, :show, :create, :update]
    end
  end
end