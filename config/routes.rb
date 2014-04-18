Micah::Application.routes.draw do
  root to: 'pages#home'


  resources :posts
  resources :blog, controller: :posts

  get '/sign_in', to: 'sessions#new', as: :sign_in
  post '/sign_in', to: 'sessions#create', as: :create_session

  get '/sign_out', to: 'sessions#destroy', as: :sign_out
  get '/photos', to: 'photos#index', as: :photos

  get 'ui(/:action)', controller: 'ui'

  get '/blog', to: 'posts#index', as: :blog_home

  get '/heartbeat', to: proc { [200, {}, ''.chars] }

end
