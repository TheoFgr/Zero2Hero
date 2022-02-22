Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'

  resources :users do
    resources :items, expect: [:index] do
      resources :bookings
    end
  end
end
