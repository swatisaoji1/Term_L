class BooksController < ApplicationController
  def index
  	@books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @user = User.find_by_id(@book.user_id)
    @categories = @book.categories
    @publishers = @book.publishers
    @authors = @book.authors
  end

  def new
   @book = Book.new
  end
 
  def create

    puts "#{book_params["tags"]}"

    tags_string = book_params["tags"]
    tags_arr = tags_string.split(",")
    puts "#{tags_arr}"
    #book_params["tags"] = tags_arr
    tags_arr.each do |x| 
      puts "x: #{x}"
              end

    puts "#{book_params["tags"]}"

    puts"#{book_params}"


   @book = Book.new(book_params)
   @book.user_id = current_user.id
   if @book.save
     redirect_to books_path, :notice => "Your Book Was Posted"
   else
     render "new"
   end
  end
   private
 def book_params
   params.require(:book).permit(:title, :description, :isbn, :image_path, :price, :tags, :quantity, :sale_type)
 end
end
