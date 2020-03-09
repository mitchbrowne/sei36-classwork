require 'sinatra'
require 'sinatra/reloader'
require 'stock_quote'
StockQuote::Stock.new(:api_key => 'pk_16a849fd637243a79fff90fa4d42bc5d')

get '/' do
  erb :home
end

get '/result' do
  @ticker = params[:ticker]
  begin
    @result = StockQuote::Stock.quote @ticker
    erb :result
  rescue StandardError
    @result = nil
    puts "Symbol not found: #{ @ticker }"
    erb :result_nil
    # or redirect to('/')
  end

end
