Rails.application.routes.draw do
  root to: 'articles#index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, :only => [:index, :show]
  resources :articles
end
