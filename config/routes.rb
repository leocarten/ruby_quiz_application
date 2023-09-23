Rails.application.routes.draw do
  get 'questions/index'
  get 'questions/show'
  get 'questions/new'
  get 'questions/create'
  get 'questions/edit'
  get 'questions/update'
  get 'questions/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "students#new"

  root to: 'main#index'

  resources :students
  resources :teachers
  resources :questions
  resources :answers

  get "about", to: "about#index"
  get "teacher", to: "teacher#index"


  get "s", to: "s#new" # for the student
  post "s", to: "s#create" # for the student


  get "create", to: "create#index"


end
