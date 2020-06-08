Rails.application.routes.draw do
	devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'books#top'
  resources :users, only: [:show, :index, :edit, :update]
  resources :books, only: [:new, :index, :create, :show, :edit, :destroy, :update ]
end