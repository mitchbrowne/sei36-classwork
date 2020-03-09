require 'sinatra' #DSL: Domain Specific Language
require 'sinatra/reloader'
require 'pry'

get '/hello' do
  "Hello World from Sinatra"
end

get '/goodbye' do
  "Goodbye cruel world from Sinatra"
end

# Dynamic - content of page changes based on some circumstance
get '/lucky_number' do
  "Here is your lucky number: #{rand 1..40 }"
end

get '/uptime' do
  "The server uptime is #{ `uptime` }" #the back ticks will run a command in command line
end


get '/fanclub/:name' do
  "#{params[:name].capitalize} is a proud member of the Marx Brothers Fan Club."
end

get '/fanclub/:first/:last' do
  "#{params[:first].capitalize} #{params[:last].upcase} is a premium member of the Marx Brothers Fan Club."
end

get '/fanclub/:first/:last/:favourite' do
  "#{params[:first].capitalize} #{params[:last].upcase} is a platinum member of the Marx Brothers Fan Club and their favourite brother is #{params[:favourite].upcase}"
end


# Second crappiest calculator of the enture course
get '/multiply/:x/:y' do
  result = params[:x].to_f * params[:y].to_f
  "The result is #{ result }"
end
