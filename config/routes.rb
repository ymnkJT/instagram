Rails.application.routes.draw do
  root 'pictures#index'
  devise_for :users
  resources :pictures, only: [:index, :new, :create, :edit, :update, :destroy]
end
