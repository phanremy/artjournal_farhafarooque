Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'pages#home'
  get 'pages/about', as: 'about'
  get 'pages/portfolio', as: 'portfolio'
  get 'pages/travelogues', as: 'travelogues'
  get 'pages/shop', as: 'shop'
  get '/cities/:name', to: 'cities#show', as: 'city'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
