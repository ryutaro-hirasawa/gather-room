Rails.application.routes.draw do
  devise_for :users
  resources :posts do
  end
  resources :users, only: :show
  get 'posts/index'
  root "posts#index"
end
