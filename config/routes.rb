NeuTwitter::Application.routes.draw do
  resources :stories

  authenticated :user do
    root :to => 'stories#index'
  end
  
  root :to => "stories#index"
  devise_for :users
  resources :users, :only => [:show, :index, :update]
end
