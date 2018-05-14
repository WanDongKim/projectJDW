Rails.application.routes.draw do
  root 'events#index'

  resources :events do
    resources :reservations
  end
  resources :reservations
  devise_for :admins
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
