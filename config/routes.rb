Rails.application.routes.draw do
  root to: 'articles#index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:index, :show]
  resources :articles do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  
end
