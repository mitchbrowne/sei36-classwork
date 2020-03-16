# README

Create Rails project with name different to database name.
create rails new solar_system --skip-git -T

Create db
touch db/create_planets.sql

Update sql file with details of table in atom under db folder

rails db:create

sqlite3 db/development.sqlite3 < db/create_planets.sql

Create model with exact same sql table name (singular name)
planet.rb within models folder


Test if model is connected to databse:
command: rails console
add gem: gem 'pry-rails'
bundle
rails console

TEST 1
Can see our planet database by typing
Planet

Or test it's working:
Planet.new
Should see our columns
Planet.all
Planet.pluck :name

TEST 2
Put seed data in a rb file so we can repopulate if needed
Go to seeds.rb in db.
Add values into Planet object hashes
Then auto run our seeds file in command: rails db:seed
Then to confirm, go to rails console, type Planet.all
ID's may not start at one, however they will be unique which is most important

SUMMARY
db:drop
db:create
sqlite3 db/development.sqlite3 < db/create_planets.sql
db:seed

OPTIONAL Annotate
command line run: annotate

OPEN 3 Terminals
1: run server
2: rails console
3: create files, etc.

CREATE CONTROLLER
touch app/controllers/planets_controller.rb
And set up class
