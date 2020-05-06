Rails.application.routes.draw do
  resources :destinations
  resources :flight_classes
  resources :accommodations
  resources :trips
  resources :users

  get '/flights', to: "flight_classes#index"

  get '/', to: "application#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
