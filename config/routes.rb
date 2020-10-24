Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'new', to: 'pages#new'
  get 'create', to: 'pages#create'
  get "/donate", to: "pages#donate"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
