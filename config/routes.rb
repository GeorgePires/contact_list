Rails.application.routes.draw do
  devise_for :users
  resources :contacts
  root to: 'static_pages#index'

  get 'about', to: 'static_pages#about'
  get 'contac', to: 'static_pages#contac'
end
