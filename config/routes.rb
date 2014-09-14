Rails.application.routes.draw do
  resources :weathers, except: [:new, :edit]
  resources :resorts, except: [:new, :edit]
  resources :snotel_stations, only: [:index, :show]
end
