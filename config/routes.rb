Rails.application.routes.draw do
  resources :pitches
  devise_for :users
  devise_for :models
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
