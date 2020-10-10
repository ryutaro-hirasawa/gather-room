Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  resources :posts do
  end
  resources :users, only: [:edit, :update, :show, :destroy]
  # get 'posts/index'
  root "posts#index"
end
