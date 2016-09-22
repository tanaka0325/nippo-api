Rails.application.routes.draw do
  resources :tasks
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match 'date', :controller => 'date', :action => :index, :via => :get
  match 'date/:date', :controller => 'date', :action => :show, :via => :get
end
