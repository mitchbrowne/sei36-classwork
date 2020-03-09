class StocksController < ApplicationController
  def form
  end

  def result
    @stock_symbol = params[:stock_symbol].upcase
    StockQuote::Stock.new(:api_key => 'pk_16a849fd637243a79fff90fa4d42bc5d')
    begin
      @result = StockQuote::Stock.quote @stock_symbol
      @price = @result.close # TODO: add any error handling whatsoever
      render :result
    rescue StandardError
      @result = nil
      puts "Symbol not found: #{ @stock_symbol }"
      render :result_nil
    end
  end
end
