Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :games 
  resources :starratings
  resources :reviews 
  resources :usergames 

  post '/signin', to: 'users#signin'
  get '/validate', to: 'users#validate'
  get '/library', to: 'users#library'
end
