Rails.application.routes.draw do
  devise_for :models
  resources :print_jobs
  resources :printers
 #  get 'users/index'
  match '/users',   to: 'users#index',   via: 'get'

  devise_for :users
  devise_scope :user do
  authenticated :user do
    root 'home#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
  end


  get 'home/index'

  resources :jobs
  resources :clients
  #root :to =>'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
