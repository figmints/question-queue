Rails.application.routes.draw do
  resources :question_queue_forms
  root 'home#index'

  devise_for :users, controllers: { registrations: "registrations" }

  resources :questions, only: [:index, :create, :show]
  resources :profiles
  resources :answers
  
end
