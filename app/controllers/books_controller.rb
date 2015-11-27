
class BooksController < ApplicationController
  def index
  	@books = Book.all
  	@order = current_order
    @order_entry = @order.order_entries.new
  end

  def show
    logger.debug "In Book Show*******"
    @book = Book.find(params[:id])
    @user = User.find_by_id(@book.user_id)
    @categories = @book.categories
    @publishers = @book.publishers
    @authors = @book.authors
    @tags = @book.tags
  end

  def new
   @book = Book.new
  end
 
  def create
   @book = Book.new(book_params)
   @book.user_id = current_user.id

   if @book.save
     redirect_to books_path, :notice => "Your Book Was Posted"
     @message = current_user.name << " Posted a book " << @book.title 
     Pusher.trigger('test_channel', 'my_event', {
      message: @message
      })
     
   else
     render "new"
   end
  end
  
   private
 def book_params
   params.require(:book).permit(:title, :description, :isbn, :image_path, :price, :quantity, :tags, :sale_type, :edition, :category_list, :author_list, :publisher_list, :tag_list)
 end

end
