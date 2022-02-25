Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'

  resources :categories do
    resources :item_categories
  end
  resources :users do
    resources :items, expect: [:index] do
      collection do
        get :my_items
      end
      resources :bookings
    end
  end
end
