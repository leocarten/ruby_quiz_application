Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'main#index'

  resources :students

  get "about", to: "about#index"
  get "teacher", to: "teacher#index"
  get "s", to: "s#index"
  get "create", to: "create#index"


end
