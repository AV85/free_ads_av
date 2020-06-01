Rails.application.routes.draw do

  get 'ads/show'
  devise_for :users

  root to: 'home#index'
  resources :categories, only: %i[index show]
  get '/users/:id/profile', to: 'users#profile', as: 'profile'
  resources :ads, only: %i[show]

  namespace :admin do
    resources :dashboard, only: :index
    resources :categories do
      resources :subcategories
    end
    get '/categories/:id/to_publish', to: 'categories#to_publish', as: 'to_publish'
    get '/categories/:id/to_draft', to: 'categories#to_draft', as: 'to_draft'
    resources :ads
    resources :users
  end
end