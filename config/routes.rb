Rails.application.routes.draw do

  get 'rents/create'
  get 'rents/update'
  get 'rents/destroy'
  get 'toys/index'
  get 'toys/show'


  devise_for :users
  root "pages#home"
  namespace :owner do
    resources :toys, only: [:index, :new, :create]
    resources :rents, only: [:index] do
      member do
        patch :accept
        patch :reject
      end
    end
  end

  resources :toys, only: [:index, :show] do
    resources :rents, only: :create
  end

  resource :profile, only: [:show]
end
