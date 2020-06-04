Rails.application.routes.draw do
  root 'profiles#home'
  get "profiles/about" => "profiles#about"
  get '/signup' => "users#new"
  resources :stories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
