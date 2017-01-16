Rails.application.routes.draw do
  resources :question_queue_forms
  root 'home#index'

  resources :departments

  devise_for :users, controllers: { registrations: "registrations" }

  resources :questions do
    resources :answers
  end

  resources :search, only: [:index]

  get 'my_profile', to: :show, controller: 'my_profile'
  get 'my_profile/question', to: 'my_profile#question'
  resources :profiles

  # resources :my_profile

end
