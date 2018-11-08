Rails.application.routes.draw do

  get 'home/index'
  devise_for :users

  root to: 'recipes#index'

  resources :levels

  resources :categories

  resources :recipes

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
