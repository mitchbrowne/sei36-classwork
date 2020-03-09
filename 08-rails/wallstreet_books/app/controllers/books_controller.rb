class BooksController < ApplicationController
  def form
  end

  def result
    @title = params[:title]
    @book_url = "https://www.googleapis.com/books/v1/volumes?q=title:#{ @title }"
    @book_info = HTTParty.get @book_url
    @book_title = @book_info["items"].first["volumeInfo"]["title"]
    @image = @book_info["items"].first["volumeInfo"]["imageLinks"]["thumbnail"]
    @author = @book_info["items"].first["volumeInfo"]["authors"]
    @category = @book_info["items"].first["volumeInfo"]["categories"]
    @rating = @book_info["items"].first["volumeInfo"]["averageRating"]
    @published = @book_info["items"].first["volumeInfo"]["publishedDate"]
    @description = @book_info["items"].first["volumeInfo"]["description"]
  end
end
