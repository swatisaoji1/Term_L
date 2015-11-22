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
   @book = Book.new
  end
 
  def create
   @book = Book.new(book_params)
   @id = current_user.id
   logger.debug "The user id : "
   logger.debug @id

   puts @id
   if @book.save
     redirect_to books_path, :notice => "Your Book Was Posted"
   else
     render "new"
   end
  end
   private
 def book_params
   params.require(:book).permit(:title, :description, :isbn, :image_path, :price, :quantity)
 end
end
