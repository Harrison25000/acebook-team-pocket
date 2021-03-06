Rails.application.routes.draw do

  get 'signin/index'

  get 'posts/index'
  get 'posts/update' , to: "posts#update"
  post 'posts/update', to: "posts#edit"
  get 'posts/delete', to: 'posts#delete'

  get '/signin', to: 'signin#new'
  post '/signin', to: 'signin#create'
  get '/signout', to: 'signin#destroy'


  get '/friends/request', to: 'friends#request'
  get "/addFriend", to: 'friends#create'

  get "/findfriends", to: "findfriends#index"

  get '/signup', to: 'signup#index'
  post '/signup', to: 'signup#create'
  resources :signup, :posts, :signin, :friends

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'signin#new'
end
