Rails.application.routes.draw do
  
  devise_for :users
  root 'post#index'
  
  get '/user' => 'post#user'
  get '/index' => 'post#index'
  get '/new' => 'post#new'
  resources :posts, except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  post '/create' => 'post#create'
  
  get '/destroy/:postid' => 'post#destroy'
  
  get '/edit/:postid' => 'post#edit'
  
  post '/update/:postid' => 'post#update'
  
  get '/show/:postid' => 'post#show'
  get '/questions' => 'post#questions'
  
  get '/soccer' => 'post#soccer'
  get '/basketball' => 'post#basketball'
  get '/baseball' => 'post#baseball'

  post '/show/:postid/comments/create' => 'comments#create'
  post '/show/:postid/comments/destroy/:comment_id' => 'comments#destroy'
  
  #freepost
  get '/free/index' => 'freepost#index'
  post '/free/create' => 'freepost#create'
  get '/free/new' => 'freepost#new'
  get '/free/show/:postid' => 'freepost#show'
  get '/free/destroy/:postid' => 'freepost#destroy'
  get '/free/edit/:postid' => 'freepost#edit'
  post '/free/update/:postid' => 'freepost#update'
  post "/like/likes_toggle" => "likes#like_toggle"

  resources :freeposts, except: [:show] do
    resources :free_comments, only: [:create, :destroy]
    post "/like", to: "likes#like_toggle"
  end
end
