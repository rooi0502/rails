Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  # user root
  resources :users
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
end
