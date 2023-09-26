Rails.application.routes.draw do

  resources :students
  resources :teachers
  resources :questions
  resources :answers

  get 'teachers/index'
  
  get 'teacher/index', to: 'teachers#index', as: 'teacher_index'
  get 'teacher/login', to: 'teachers#login', as: 'teacher_login'
  get 'student/login', to: 'students#login', as: 'student_login'
  get 'student/index', to: 'students#index', as: 'student_index'
  get 'main/index', to: 'main#index', as: 'main_index'
  get "create", to: "create#index"
  get "about", to: "about#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #root "students#new"

  root to: 'main#index'

  


  resources :teachers do
    post 'check_credentials', on: :collection
  end
  resources :students do
    post 'check_credentials', on: :collection
  end
  get '/logout', to: 'students#logout', as: 'logout'






end
