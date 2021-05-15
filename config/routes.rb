Rails.application.routes.draw do

  resources :teetimes
  root "welcome#index"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  #get 'authorized', to: 'sessions#page_requires_login'
  resources :users
  resources :scorecard
  
  resources :golf_courses do
    resources :teetimes #, only: [:index, :new, :show, :create]
  end


  resources :golf_courses do
    resources :scorecard, only: [:index, :new, :show, :create]
  end

  
  
  
 
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
