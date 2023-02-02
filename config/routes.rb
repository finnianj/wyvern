Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  get 'pages/about', to: 'pages#about', as: 'about'

  resources :candidates
  resources :blogposts


  # Defines the root path route ("/")
  # root "articles#index"
end
