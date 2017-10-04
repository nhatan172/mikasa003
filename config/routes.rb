Rails.application.routes.draw do

  namespace :learning do
    get 'learning/home'
  end

  namespace :learning do
    get 'n5/index'
  end

  namespace :learning do
    get 'n5/show'
  end

  get 'static_pages/home'

  root 'static_pages#home'

  devise_for :users
  resources :users, only: [:index,:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
