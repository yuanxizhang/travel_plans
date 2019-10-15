Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :travelers
      resources :plans
      resources :providers
      resources :offers
    end
  end
end