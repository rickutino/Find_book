Rails.application.routes.draw do
  root 'searches#new'
  resources :book, only: [:index, :show, :edit, :destroy]
  resources :searches, only: [:new, :create, :show]
end
