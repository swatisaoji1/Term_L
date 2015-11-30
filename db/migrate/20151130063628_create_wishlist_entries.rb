class CreateWishlistEntries < ActiveRecord::Migration
  def change
    create_table :wishlist_entries do |t|
      t.references :book, index: true, foreign_key: true
      t.references :wishlist, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
