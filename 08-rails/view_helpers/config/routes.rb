Rails.application.routes.draw do
  root :to => 'pages#home'
  get '/mcnumbers' => 'pages#numbers', :as => :numbers #numbers_path
  get '/text' => 'pages#text'
  get '/assets' => 'pages#assets'
  get '/url' => 'pages#url'
end
