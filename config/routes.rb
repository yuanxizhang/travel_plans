Rails.application.routes.draw do
	namespace :api do
     namespace :v1 do
        resources :plans, :except => [:edit, :delete]
        resources :offers, :except => [:edit, :delete]
        resources :travelers, :except => [:edit, :delete]
        resources :providers, :except => [:edit, :delete]
     end
  end
end
