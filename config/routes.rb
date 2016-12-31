Rails.application.routes.draw do
  root 'pictures#index'
  resources :pictures, only: [:index, :new, :create, :edit, :update, :destroy]
end
