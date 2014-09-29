Rails.application.routes.draw do
  resources :weather, only: [:show] do
    get :by_location, on: :collection
  end

  resources :resorts, only: [:index, :show]

  resources :snotel_stations, only: [:index, :show] do
    get :daily_snowfall, on: :member
  end

  root to: 'overview#index'
end
