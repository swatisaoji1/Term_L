class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.integer :type
      t.integer :quantity
      t.decimal :unit_price
      t.references :book, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
