Rails.application.routes.draw do
  resources :destinations
  resources :flight_classes
  resources :accommodations
  resources :trips
  resources :users

  get '/flights', to: "flight_classes#index"
  
 
  post "/sessions/login", to: "sessions#create", as: 'new_login'

  get "/sessions/logout", to: "sessions#destroy", as: "log_out_session"

  get '/', to: "application#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
