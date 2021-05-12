Rails.application.routes.draw do

  root "welcome#index"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout' to: 'sessions#destroy'
  
  
  resources :golf_courses do
    resources :users, only: [:index, :show]
  end

  
  resources :users
  
 
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
