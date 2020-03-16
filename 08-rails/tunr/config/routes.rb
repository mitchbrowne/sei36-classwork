Rails.application.routes.draw do
  root :to => 'pages#welcome'
  resources :users, :only => [:new, :create, :index] # only have the user pages for new, create and index

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :mixtapes, :only => [:new, :create] # only hae the mixtape pages for new and create
end
