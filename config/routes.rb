Rails.application.routes.draw do
  resources :posts, only: %i(index)
  root 'posts#index'
end
