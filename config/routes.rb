Rails.application.routes.draw do
  devise_for :users
  root 'pictures#index'
  resources :pictures, only: [:index, :new, :create, :edit, :update, :destroy]
end
