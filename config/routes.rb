Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sites
  resources :site_user do
    resources :materials, only: [:index, :show]
  end

  get 'sales', to: 'materials#sales', as: :sales
end
