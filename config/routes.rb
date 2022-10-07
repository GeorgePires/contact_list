Rails.application.routes.draw do
  root to: 'static_pages#index'
  get 'about', to: 'static_pages#about'
  get 'contac', to: 'static_pages#contac'

  resources :contacts
  devise_for :users

end
