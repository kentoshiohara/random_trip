Rails.application.routes.draw do
  devise_for :users
  root to: 'destinations#index'
  resources :destinations, only: [:index, :new, :create] do
    collection do 
      get 'recommend'
      post 'recommend'
    end 
  end 
end
