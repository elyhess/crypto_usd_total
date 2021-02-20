Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'portfolios#index'
  resources :portfolios do
    resources :coins, controller: 'portfolio_coins', only: [:new, :create]
  end
end
