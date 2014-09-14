Rails.application.routes.draw do
  resources :snotel_stations, only: [:index, :show]
end
