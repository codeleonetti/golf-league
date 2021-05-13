Rails.application.routes.draw do

  root "welcome#index"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  #get 'authorized', to: 'sessions#page_requires_login'
  resources :users
  
  resources :golf_courses do
    resources :users, only: [:index, :show]
  end

  
  
  
 
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
