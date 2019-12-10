Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/about', as: 'about'
  get 'pages/portfolio', as: 'portfolio'
  get 'pages/travelogues', as: 'travelogues'
  get 'pages/shop', as: 'shop'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
