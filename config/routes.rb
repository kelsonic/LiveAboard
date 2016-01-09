Rails.application.routes.draw do
  
  root 'pages#home'
  
  resources :live_aboards
  
  get '/about', to: 'pages#about'

  get '/contact', to: 'pages#contact'

end
