Rails.application.routes.draw do
  root "pages#home"
  namespace :owner do
    resources :toys, only: [:index, :new, :create]
    resources :rents, except: [:index, :new, :show, :create, :edit, :update, :destroy] do
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
