Rails.application.routes.draw do
  resources :resorts, only: [:index, :show]
  resources :snotel_stations, only: [:index, :show]
  root to: 'overview#index'
end
