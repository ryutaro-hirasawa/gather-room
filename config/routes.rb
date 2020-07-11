Rails.application.routes.draw do
  devise_for :users
  resources :posts, only: [:index, :new, :create, :destroy, :edit, :update, :show]
  get 'posts/index'
  root "posts#index"
end
