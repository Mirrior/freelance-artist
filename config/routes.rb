Rails.application.routes.draw do
  devise_for :users
  resources :prints

  root to: 'prints#index'
end