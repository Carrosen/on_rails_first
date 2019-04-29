Rails.application.routes.draw do

  devise_for :users
  resources :articles

  

  get 'users/index'
  root controller: :articles, action: :index

end