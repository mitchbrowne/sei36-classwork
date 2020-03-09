require 'sinatra'
require 'sinatra/reloader'

# Convention over configuation

get '/' do
  erb :home #erb: embedded ruby
end

get '/faq' do
  erb :faq
end

get '/result' do
  @x = params[:x].to_f
  @y = params[:y].to_f

  @result = case params[:operator] # Instance variable
  when '+' then @x + @y
  when '-' then @x - @y
  when '*' then @x * @y
  when '/' then @x / @y
  end

  erb :result
end
