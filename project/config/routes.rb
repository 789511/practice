Rails.application.routes.draw do
  get 'profiles/show'
  get 'profiles/edit'
  devise_for :users
  get 'about', to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
  namespace :admin do
      resources :games

      root to: "games#index"
    end
  resources :games
  resource :profile, only: [:show, :edit, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root "games#index"


  # Defines the root path route ("/")
  # root "posts#index"
end
