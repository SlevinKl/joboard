Rails.application.routes.draw do
  get 'applications/index'
  get 'applications/new'
  get 'applications/create'
  get 'applications/edit'
  get 'applications/update'
  get 'applications/destroy'
  devise_for :users
  root to: "pages#home"

  resources :applications
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
