class BooksController < ApplicationController
  def index
  	@books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @categories = @book.categories
    @publishers = @book.publishers
    @authors = @book.authors
  end

  def new

  end
  
end
