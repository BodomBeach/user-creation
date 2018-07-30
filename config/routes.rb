Rails.application.routes.draw do
  root to:'static_pages#home'
  get 'users/new', to: 'users#new', as: 'new_user'
  post 'users/new', to: 'users#create', as: 'new_user_created'
  get 'users/error', to: 'users#error', as: 'error'
  get 'users/:username', to: 'users#show', as: 'show'
end
