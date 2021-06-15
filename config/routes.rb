Rails.application.routes.draw do
  root 'searches#new'
  resources :books
  resources :categories
  resources :searches, only: [:new, :create, :show]
end
