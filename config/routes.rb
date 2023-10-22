Rails.application.routes.draw do
  # get 'tweets/index'
  # get 'tweets/new'
  # get 'tweets/create'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  root 'pages#home'
  get "/pages/:id", to: "pages#show", as: "pages"
 
  resources :tweets , only: [:new , :create, :edit, :update] do 
    resources :comments
     get "/retweet", to: "tweets#retweet", as: "tweet_retweet"
     post "/retweet/create", to: "tweets#create_retweet", as: "retweet_create"
  end 
  
  # get "/tweets/new", to: "tweets#new", as: "new_tweet"
  
  # post "/tweet", to: "tweet#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
