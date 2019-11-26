Rails.application.routes.draw do
  get 'materials/index'
  get 'materials/show'
  get 'materials/new'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sites, only: [:new, :create, :destroy, :edit, :index]
  resources :materials, only: [:new, :create, :index, :destroy, :show] do
    resources :bids
  end
end
