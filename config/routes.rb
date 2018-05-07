Rails.application.routes.draw do

  resources :events do
    resources :reservations
  end
  devise_for :admins
  devise_for :users
  root 'events#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
