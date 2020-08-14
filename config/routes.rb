PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  get 'register', to: 'users#new'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  # get '/creators' => 'creators#index'
  resources :posts, except: [:destroy] do
    resources :comments, only: [:create]

    member do
      post 'vote'
    end
  end
  resources :categories, only: [:new, :create, :show]
  # resources :creators, except: [:destroy]

  resources :users, only: [:show, :create, :edit, :update]
end
