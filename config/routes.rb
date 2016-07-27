Rails.application.routes.draw do
  resources :locations
  resources :seminars
  resources :seminar_types
  resources :mission_types
  resources :guides, shallow: true do
    resources :missions
    resources :registrations
  end
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