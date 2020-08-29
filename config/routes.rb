Rails.application.routes.draw do
  get 'orders/create'
  get 'orders/index'
  get 'orders/show'
  get 'orders/update'
  get 'plates/index'
  post 'login', to: 'sessions#create'
  post 'signup', to: 'users#create'
  delete 'logout', to: 'sessions#destroy'

  resource :user, only: [:show ,:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
