Rails.application.routes.draw do

  namespace :api do
    resources :sources, only: [:index, :create]
    resources :articles, only: [:index, :create]
    resources :users, only: [:index, :create]
    resources :user_stories, only: [:index, :create, :update]  
    post '/login' , to: 'sessions#create', as: 'login'
  end
  

end
