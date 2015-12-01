class WishlistEntriesController < ApplicationController

  before_filter :store_location
  before_filter :authenticate_user!
  def new
    @wishlist = current_wishlist
    @wishlist_entry = @wishlist.wishlist_entries.new
    render "books"
  end

  def create
    @wishlist = current_wishlist
    # check if book already in wishlist
    current_wishlist_enteries = @wishlist.wishlist_entries
    current_wishlist_enteries.each do |wishlist|
      if wishlist.book_id == wishlist_entry_params[:book_id].to_i then
        return redirect_to :back , :notice=> "The Book is already in wishlist"
      end 
    end
    @wishlist_entry = @wishlist.wishlist_entries.new(wishlist_entry_params)
    @message = current_user.name << " added " << Book.find(@wishlist_entry.book_id).title << " to the wishlist"
    if @wishlist.save
      Pusher.trigger('test_channel', 'my_event', {
        message: @message
       })
    end
    session[:wishlist_id] = @wishlist.id
  end

  def update
    @wishlist = current_wishlist
    @wishlist_entry = @wishlist.wishlist_entries.find(params[:id])
    @wishlist_entry.update_attributes(wishlist_entry_params)
    @wishlist_entries = @wishlist.wishlist_entries
  end

  def destroy
    @wishlist = current_wishlist
    @wishlist_entry = @wishlist.wishlist_entries.find(params[:id])
    @wishlist_entry.destroy
    @wishlist_entries = @wishlist.wishlist_entries
  end
  
  def move_to_cart
    
  end

  private
  def wishlist_entry_params
    params.require(:wishlist_entry).permit(:book_id)
  end
  
  def store_location
    session[:user_return_to] = "/books"
  end

end
