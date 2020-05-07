Rails.application.routes.draw do
  resources :destinations
  resources :flight_classes
  resources :accommodations
  resources :trips
  resources :users

  get '/', to: "application#index"
  
  get '/flights', to: "flight_classes#index"
 
  post "/sessions/login", to: "sessions#create", as: 'new_login'

  get "/sessions/logout", to: "sessions#destroy", as: "log_out_session" 

  get "/sessions/cart", to: "sessions#show_cart", as: "cart"

  post "/sessions/add_flight", to: "sessions#add_flight"
  post "/sessions/add_accommodation", to: "sessions#add_accommodation"
  post "/sessions/add_destination", to: "sessions#add_destination"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
