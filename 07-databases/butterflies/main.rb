require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'SQLite3'

get '/' do
  erb :home
end

# INDEX
get '/butterflies' do
  @butterflies = query_db('SELECT * FROM butterflies')
  erb :butterflies_index
end

# NEW
get '/butterflies/new' do
  erb :butterflies_new
end

# CREATE
post '/butterflies' do
  # Connect to the database
  query_db "INSERT INTO butterflies (name, family, image) VALUES  ('#{params[:name]}','#{params[:family]}','#{params[:image]}')"
  redirect to('/butterflies')
  # Execute an insert statement with params
  # Send the user to the index page
end

# SHOW
get '/butterflies/:id' do # dynamic URL
  # connect to DB
  # fetch the specific butterfly from the DB using its id
  # render the show page
  # db = SQLite3::Database.new 'database.sqlite3'
  # db.results_as_hash = true
  @butterfly = query_db "SELECT * FROM butterflies WHERE id=#{ params[:id] }"
  @butterfly = @butterfly.first
  erb :butterflies_show
end

# EDIT
get '/butterflies/:id/edit' do
  @butterfly = query_db "SELECT * FROM butterflies WHERE id=#{ params[:id] }"
  @butterfly = @butterfly.first
  erb :butterflies_edit
end

# UPDATE
post '/butterflies/:id' do
  # SQL UPDATE statement
  query_db "UPDATE butterflies SET name='#{params[:name]}', family='#{params[:family]}', image='#{params[:image]}' WHERE id=#{params[:id]}"
  # redirect to SHOW
  redirect to("/butterflies/#{ params[:id] }") # GET request
end

# DESTROY
get '/butterflies/:id/delete' do
  # connect to datebase
  @butterfly = query_db("DELETE FROM butterflies WHERE id=#{ params[:id]}")
  redirect to ('/butterflies')
  # execute delete statement
  # redirect to INDEX
end



def query_db(sql_statement)
  puts sql_statement
  db = SQLite3::Database.new 'database.sqlite3'
  db.results_as_hash = true
  results = db.execute sql_statement
  db.close
  results # Implicit return
end
