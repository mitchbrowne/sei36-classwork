require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'SQLite3'
require 'active_record'

# Rails sets this up for us automatically
ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'database.sqlite3'
)

# Optional bonus
ActiveRecord::Base.logger = Logger.new(STDERR)

# Model: class + a database table
class Butterfly < ActiveRecord::Base
  belongs_to :plant, :optional => true
end

class Plant < ActiveRecord::Base
  has_many :butterflies
end

get '/' do
  erb :home
end

# INDEX
get '/butterflies' do
  @butterflies = Butterfly.all
  erb :butterflies_index
end

# NEW
get '/butterflies/new' do
  erb :butterflies_new
end

# CREATE
post '/butterflies' do
  # Connect to the database
  butterfly = Butterfly.new
  butterfly.name = params[:name]
  butterfly.family = params[:family]
  butterfly.image = params[:image]
  butterfly.plant_id = params[:plant_id]
  butterfly.save
  redirect to("/butterflies/#{ butterfly.id }")
  # Execute an insert statement with params
  # Send the user to the index page
end

# SHOW
get '/butterflies/:id' do # dynamic URL
  # connect to DB
  # fetch the specific butterfly from the DB using its id
  # render the show page
  @butterfly = Butterfly.find params[:id]
  erb :butterflies_show
end

# EDIT
get '/butterflies/:id/edit' do
  @butterfly = Butterfly.find params[:id]
  erb :butterflies_edit
end

# UPDATE
post '/butterflies/:id' do
  # SQL UPDATE statement
  # redirect to SHOW
  butterfly = Butterfly.find params[:id]
  butterfly.name = params[:name]
  butterfly.family = params[:family]
  butterfly.image = params[:image]
  butterfly.plant_id = params[:plant_id]
  butterfly.save
  redirect to("/butterflies/#{ params[:id] }") # GET request
end

# DESTROY
get '/butterflies/:id/delete' do
  # connect to datebase
  butterfly = Butterfly.find params[:id]
  butterfly.destroy
  redirect to ('/butterflies')
  # execute delete statement
  # redirect to INDEX
end

# PLANTS ######################################
# INDEX
get '/plants' do
  @plants = Plant.all
  erb :plants_index
end

# NEW
get '/plants/new' do
  erb :plants_new
end

# CREATE
post '/plants' do
  plant = Plant.new
  plant.name = params[:name]
  plant.image = params[:image]
  plant.save
  redirect to("/plants/#{ plant.id }")
end

# EDIT
get '/plants/:id/edit' do
  @plant = Plant.find params[:id]
  erb :plants_edit
end

# UPDATE
post '/plants/:id' do
  plant = Plant.find params[:id]
  plant.name = params[:name]
  plant.image = params[:image]
  plant.save
  redirect to("/plants/#{ plant.id }")
end

# DELETE
get '/plants/:id/delete' do
  plant = Plant.find params[:id]
  plant.destroy
  redirect to ("/plants")
end

# SHOW
get '/plants/:id' do
  # fetch the plant
  @plant = Plant.find params[:id]
  erb :plants_show
end

after do
  ActiveRecord::Base.connection.close
end
