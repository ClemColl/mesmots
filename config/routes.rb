Rails.application.routes.draw do

  get 'errors/http_404'

  get 'registrations/devise'
  
  get '/home' => 'static#home'

  get '/about' => 'static#about'

  devise_for :users
  resources :memories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static#home'

  match '*path' => 'errors#http_404', via: :all
end
