Rails.application.routes.draw do
  
  get '/home' => 'static#home'

  get '/about' => 'static#about'

  devise_for :users
  resources :memories

  root to: 'static#home'

  match '*path' => 'static#home', via: :all
end
