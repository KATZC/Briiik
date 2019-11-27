Rails.application.routes.draw do
  get 'materials/index'
  get 'materials/show'
  get 'materials/new'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sites do
    resources :site_users
  end

  # get 'profiles' to: 'profiles#index'

end
