Rails.application.routes.draw do
  root 'pages#index'

  resources :users

  resources :accounts

  resources :transactions
end
