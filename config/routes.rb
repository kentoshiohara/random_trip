Rails.application.routes.draw do
  devise_for :users
  root to: 'destinations#index'
  resources :users, only: [:edit, :update]
  resources :destinations, only: [:index, :new, :create, :update] do
    collection do 
      get 'recommend'
      post 'recommend'
    end
  end
end
