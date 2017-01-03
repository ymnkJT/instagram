Rails.application.routes.draw do
  root 'pictures#index'
  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  resources :pictures, only: [:index, :new, :create, :edit, :update, :destroy]
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
