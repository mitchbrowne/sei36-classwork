SCAFFOLD (not as easily customisable)

Creates a whole ruby on rails application framework (without a git repo):
rails new movie_night --skip-git

cd movie_night/

Creates the whole crud system for movie
rails generate scaffold Movie
rails generate scaffold Movie title:string rating:string released:date

rails db:create

rails db:migrate

rails server
(rails server is always in 3000 port)




RAILS SET UP
rails new rails-intro --skip-git -T

SHOW ALL ROUTES
http://localhost:3000/rails/info/routes

Render and erb are equivalent in rails and sinatra

Each controller (collection of files) has actions (collection of views) which has views
Controller expects action named folder in views

ADD GEM
Add gems in Gem under Group Development.
Then close server, command 'bundle', then start server
