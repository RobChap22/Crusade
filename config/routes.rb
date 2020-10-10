Rails.application.routes.draw do
  devise_for :users
  root to: 'forces#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :forces, only: [:new, :create, :index, :show] do
    resources :units, only: [:new, :create, :show]
  end
end
