Rails.application.routes.draw do
  get 'home/index'

  devise_for :users

  resources :users

  root :to => 'users#show'

end
