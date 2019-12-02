Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'sales', to: 'materials#sales', as: :sales


  get 'map', to: 'sites#map', as: :map

  get '/sites/:id/records', to: 'sites#records', as: :records


  resources :sites do
    resources :site_users
  end

  resources :materials, only: [:index, :show, :new, :create] do
    resources :bids, only: :create
  end

  resources :bids, only: [:index, :show]
  # get 'profiles' to: 'profiles#index'



end
