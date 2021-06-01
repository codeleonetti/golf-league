Rails.application.routes.draw do

  root "welcome#index"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  match '/auth/:google_oauth2/callback' => 'sessions#google', via: [:get,:post]
  get '/search' => 'golf_courses#search', :as => 'golf_courses_search'
  resources :users
  
  resources :golf_courses do
    resources :teetimes 
  end

  

  
  
  
  
 
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
