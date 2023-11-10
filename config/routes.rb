Rails.application.routes.draw do
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  devise_for :users
  get 'homes/about' => 'homes#about' ,as: "about"
  root to: "homes#top"
  resources :users, only: [:show, :edit, :update]
end
