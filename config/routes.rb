Rails.application.routes.draw do
  root to: 'static_pages#index'
  get 'about', to: 'static_pages#about'
  get 'contac', to: 'static_pages#contac'
  get 'profile', to: 'static_pages#profile'

  resources :contacts
  devise_for :users

end
