Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  resources :tutorials
  resources :users, only: [:index, :show, :update]
end
