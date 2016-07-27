Rails.application.routes.draw do
  # dashboard
  get 'dashboard/admin'
  get 'dashboard/guide'

  # seminars
  resources :seminar_types
  resources :seminars, shallow: true do
    resources :registrations
  end
  
  # missions
  resources :mission_types
  resources :guides, shallow: true do
    resources :missions
  end
  get "dashboard", to: "dashboard#show", as: :dashboard
  
  resources :locations
  resources :languages
  resources :admins
  resources :clients
  resources :members
  
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'guides#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  root to: "clients#new"
end