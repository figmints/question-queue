Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  resources :question_queue_forms
  root 'home#index'

  devise_for :users, controllers: { registrations: "registrations" }

  resources :questions do
    resources :answers

  end

  get 'my_profile', to: :show, controller: 'my_profile'
  resources :profiles
  
end
