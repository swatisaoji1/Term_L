class WishlistsController < ApplicationController

  def index
    
  end
  def show
  	@wishlist_entries = current_wishlist.wishlist_entries
  end

end
