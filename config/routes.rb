Rails.application.routes.draw do
  devise_for :users
  get '/about' => 'homes#about'
  root to: "homes#top"

end
