Rails.application.routes.draw do
  root to: 'restaurants#index'

  resources :restaurants do
    resources :reviews, only: %i[index new create]
    collection do
      get 'top'
    end
    member do
      get 'chef'
    end
  end

  resources :reviews, only: %i[show edit update]

  namespace :admin do
    resources :restaurants, only: :index
  end
end
