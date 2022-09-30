Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  get 'customers/alphabetized'

  get 'customers/missing_email'

  #resources :customers, only: [:index]

  root to: 'customers#index'
  #devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
