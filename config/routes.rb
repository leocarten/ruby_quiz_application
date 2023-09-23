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


  resources :students
  resources :teachers
  resources :questions
  resources :answers

end
