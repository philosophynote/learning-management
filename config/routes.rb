Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  root                'static_pages#home'
  get    'help'    => 'static_pages#help'
  get    'about'   => 'static_pages#about'
  get    'contact' => 'static_pages#contact'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
    collection do
      get 'search'
    end
  end
  resources :account_activations, only: [:edit]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :favorites,           only: [:create, :destroy]
end