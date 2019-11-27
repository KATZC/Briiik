Rails.application.routes.draw do
  get 'materials/index'
  get 'materials/show'
  get 'materials/new'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'sales', to: 'materials#sales', as: :sales

  resources :sites do
    resources :site_users
  end

  resources :materials, only: [:index, :show]
  # get 'profiles' to: 'profiles#index'

end
