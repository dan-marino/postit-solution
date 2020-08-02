PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  # get '/creators' => 'creators#index'
  resources :posts, except: [:destroy]
  resources :creators, except: [:destroy]
end
