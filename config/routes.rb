Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  resources :question_queue_forms
  root 'home#index'

  resources :departments

  devise_for :users, controllers: { registrations: "registrations" }

  resources :questions do
    resources :answers
  end

  resources :search, only: [:index]

  get 'my_profile', action: :show, controller: 'my_profile'
  # resources :my_profile
  namespace :my_profile do
    resources :profile_questions, only: [:index]
  end
  # resources :my_profile do
    # resources :profile_questions, only: [:index]
    # get 'my_profile/questions', to: :index, controller: 'profile_questions'
    # resources :questions, controller: 'profile_questions_controller', only: [:index]
  # end

  # resources :my_profile

end
