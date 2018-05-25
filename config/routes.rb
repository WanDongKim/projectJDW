Rails.application.routes.draw do
    root 'events#index'

  resources :events do
    resources :reservations do
      collection do
        # post 'express_checkout'
        resources :transactions, only: [:new, :create, :show]
      end
    end
  end

  devise_for :admins
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
