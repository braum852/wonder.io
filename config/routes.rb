Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#welcome'

  resources :users
  
  get '/login', to: "sessions#login"
  post '/login', to: "sessions#create"
  get '/welcome', to: "sessions#welcome"
  get '/home', to: "sessions#home"
  post  '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'

  resources :authors, only: [:show, :index] do
    resources :posts, only: [:show, :index, :new, :edit]
  end
  resources :posts

end