Rails.application.routes.draw do
  root to: 'transactions#index'
  resources :transactions, path: '/'

  devise_for :users, controllers: { registrations: "registrations"}
end
