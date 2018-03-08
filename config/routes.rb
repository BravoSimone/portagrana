Rails.application.routes.draw do
  root to: 'transactions#index'
  resources :transactions
  get :stats, to: 'stats#index'

  devise_for :users, controllers: { registrations: "registrations"}
end
