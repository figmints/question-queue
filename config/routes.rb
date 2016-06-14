Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'

  # devise_for :users, :controllers => { registrations: 'registrations' }


  resources :questions, only: [:index, :create]
end
