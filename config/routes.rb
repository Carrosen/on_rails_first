Rails.application.routes.draw do
  devise_for :users

  resources :articles do
    resources :comments
  end

  get 'users/index'
  root controller: :articles, action: :index

end