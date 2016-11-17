Rails.application.routes.draw do
  resources :question_queue_forms
  root 'home#index'

  resources :departments

  devise_for :users, controllers: { registrations: "registrations" }

  resources :questions do
    resources :answers

  end

  get 'my_profile', to: :show, controller: 'my_profile'
  resources :profiles

end
