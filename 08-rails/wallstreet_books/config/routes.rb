Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/books' => 'books#form'
  get '/books/result' => 'books#result'

  get '/stocks' => 'stocks#form'
  get '/stocks/result' => 'stocks#result'
end
