Rails.application.routes.draw do
  get 'sessions/new'
  root  'static_pages#home'
  get   '/about',   to: 'static_pages#about'

  get   '/signup',  to: 'users#new'
  get   '/login',   to: 'sessions#new'

  resources :users, except: :new
  resources :sessions, only: :create
end
