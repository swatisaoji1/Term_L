
class BooksController < ApplicationController
  helper_method :get_amazon_price
 
  
  def index
  	@books = Book.all
  	if params[:search]
  	  logger.debug(params[:search])
      @books = Book.search(params[:search]).order("created_at ASC")
    else
      @books = Book.all.order('created_at ASC')
    end
  	@order = current_order
    @order_entry = @order.order_entries.new
  end
  
  
  def postings
    @books = Book.postings(current_user.id).order("created_at ASC")
    render :partial =>'postings'
  end

  def show
    @order = current_order
    @order_entry = @order.order_entries.new
    @book = Book.find(params[:id])
    @user = User.find_by_id(@book.user_id)
    @categories = @book.categories
    @publishers = @book.publishers
    @authors = @book.authors
    @tags = @book.tags
  end
  

  def edit
     @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
     if @book.update(book_params)
       #redirect_to books_path, :notice => "Your Book Was Edited"
       @message = current_user.name << " Edited a book " << @book.title 
       Pusher.trigger('test_channel', 'my_event', {
        message: @message
       }) 
       redirect_to dashboard_index_path,  :notice => "Your Book Was Edited"
       
     else
       render "edit"
     end
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
  
  def destroy
    logger.debug(params[:id])
    @book = Book.find(params[:id])
    @message = current_user.name << " Deleted the book " << @book.title 
    if @book.delete
      Pusher.trigger('test_channel', 'my_event', {
        message: @message
       })  
    end
    redirect_to :back, :notice => "The book was deleted "
  end
  
  def amazon_price
    @book= Book.find(params[:id])
    @search_term = @book.isbn
    search_term = @search_term.delete("^a-zA-Z  0-9")
    @res  = Amazon::Ecs.item_search(search_term,  { :search_index => 'Books', :sort => 'relevancerank' })
    @price  = Amazon::Ecs.item_search(search_term,  { :response_group => 'Offers', :search_index => 'Books', :sort => 'relevancerank' })
    @price.items.each_with_index do |item, n|
      @amazon_price = item.get('OfferSummary/LowestNewPrice/FormattedPrice')
      logger.debug(@amazon_price)
    end
    @order = current_order
    @order_entry = @order.order_entries.new
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  
   private
 def book_params
   params.require(:book).permit(:title, :description, :isbn, :image_path, :price, :quantity, :tags, :sale_type, :edition, :category_list, :author_list, :publisher_list, :tag_list)
 end

end
