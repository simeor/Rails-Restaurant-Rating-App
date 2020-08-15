Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'restaurantxs#index'
  resources :restaurantxs do
    resources :reviews, only: [ :new, :create]
    collection do
      get :top
    end
  end
end
