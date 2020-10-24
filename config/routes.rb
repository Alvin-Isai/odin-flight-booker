Rails.application.routes.draw do
  root 'flights#search'
  resources :flights 
  resources :bookings
  resources :passengers
  get '/search', to: 'flights#search', as: :search
end
