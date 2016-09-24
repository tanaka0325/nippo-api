Rails.application.routes.draw do
  resources :tweets
  resources :tags
  resources :diaries
  resources :tasks
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match "tasks/date/:date", :to => "tasks#date", :via => :get
  match "diaries/date/:date", :to => "diaries#date", :via => :get
end
