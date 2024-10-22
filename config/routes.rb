Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ('/')
  # root 'posts#index'

  root 'catalog#index'

  # Manage Users
  resources :users, only: [:new, :create]

  # Login and Logout User Session
  resources :user_sessions, only: [:create, :destroy]
  get '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  get '/sign_in', to: 'user_sessions#new', as: :sign_in

  # Catalog routes
  resources :catalog, only: [:index, :show]

  # Courses routes
  resources :courses
end
