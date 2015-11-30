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
    @wishlist_entry = @wishlist.wishlist_entries.new(wishlist_entry_params)
    @wishlist.save
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

  private
  def wishlist_entry_params
    params.require(:wishlist_entry).permit(:book_id)
  end
  
  def store_location
    session[:user_return_to] = "/books"
  end

end
