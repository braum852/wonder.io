Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#welcome'

  resources :users
  
  get '/login', to: "sessions#login"
  post '/login', to: "sessions#create"
  get '/home', to: "sessions#home"
  post  '/logout', to: 'sessions#destroy'

  resources :locations, only: [:show, :index] do
    resources :wonders, only: [:show, :index]
  end
  resources :wonders

end

#    <%= link_to "Click to reveal all seven wonders!", controller: :wonders, action: :index, method: :get %>