Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'
  resources :categories, only: %i[index show]
  get '/users/:id/profile', to: 'users#profile', as: 'profile'

  namespace :admin do
    resources :dashboard, only: :index
    resources :categories
    resources :ads
    resources :users
  end
end