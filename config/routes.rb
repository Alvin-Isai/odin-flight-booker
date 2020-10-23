Rails.application.routes.draw do
  root 'flights#search'
  resources :flights
  get '/search', to: 'flights#search', as: :search
end
