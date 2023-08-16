Rails.application.routes.draw do
  root 'pages#home'
  resources :elements
  resources :users
end
