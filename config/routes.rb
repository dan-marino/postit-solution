PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  # get '/creators' => 'creators#index'
  resources :posts, except: [:destroy]
  resources :categories, only: [:new, :create, :show]
  # resources :creators, except: [:destroy]
end
