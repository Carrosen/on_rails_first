Rails.application.routes.draw do
  get 'user/index'
  root controller: :user, action: :index
end

# Rails.application.routes.draw do
  # get 'user/index'
#   root controller: :articles, action: :index
# end