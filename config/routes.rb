Rails.application.routes.draw do

  devise_for :users

  get 'users/index'
  root controller: :articles, action: :index

end

# # Rails.application.routes.draw do
  # get 'users/index'
#   devise_for :users
  # get 'user/index'
#   root controller: :articles, action: :index
# end