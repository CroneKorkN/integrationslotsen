Rails.application.routes.draw do
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
end
