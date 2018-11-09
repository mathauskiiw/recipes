Rails.application.routes.draw do

  devise_for :users

  get "home/index"
  root "home#index"
  root "home#index", via: :post

  resources :levels

  resources :categories

  resources :recipes

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
