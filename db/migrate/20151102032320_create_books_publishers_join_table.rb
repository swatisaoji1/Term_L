class CreateBooksPublishersJoinTable < ActiveRecord::Migration
  def change
  	create_table :books_publishers, id: false do |t|
      t.integer :book_id
      t.integer :publisher_id
    end
 
    add_index :books_publishers, :book_id
    add_index :books_publishers, :publisher_id
  end
end
