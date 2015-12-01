class WishlistEntry < ActiveRecord::Base
  belongs_to :book
  belongs_to :wishlist

  validate :book_present
  validate :wishlist_present

  after_update :update_wishlist

  private
  def book_present
    if book.nil?
      errors.add(:book, "is not valid or is not active.")
    end
  end

  def wishlist_present
    if wishlist.nil?
      errors.add(:wishlist, "is not valid.")
    end
  end

  def update_wishlist
    wishlist.save
  end

end
