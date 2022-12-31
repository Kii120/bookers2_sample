Rails.application.routes.draw do
  # get 'users/show'
  # get 'users/edit'
  # get 'users/update'
  # get 'books/new'
  # get 'books/create'
  # get 'books/edit'
  # get 'books/destory'
  # get 'books/update'
  # get 'books/index'
  # get 'books/show'
  # get 'homes/top'
  devise_for :books
  devise_for :users
  
  root to: "homes#top"
  resources :users, only: [:show, :edit, :update, :index]
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update]
  
  get 'home/about' => 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
