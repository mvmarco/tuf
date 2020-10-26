Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  post "send_contact", to: "pages#send_contact"

 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
