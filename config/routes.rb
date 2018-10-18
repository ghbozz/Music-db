Rails.application.routes.draw do
  resources :tracks
  devise_for :users
  root to: 'tracks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
