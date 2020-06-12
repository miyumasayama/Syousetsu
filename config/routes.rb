Rails.application.routes.draw do
  root 'profiles#home'
  get "profiles/about" => "profiles#about"
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :stories
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
