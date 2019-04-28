Rails.application.routes.draw do

  devise_for :users

  get 'users/index'
  root controller: :articles, action: :index

end