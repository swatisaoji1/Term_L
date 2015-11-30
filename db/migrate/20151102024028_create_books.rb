class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :isbn, null: false
      t.text :tags, array: true, default: []
      t.text :description
      t.string :image_path
      t.string :edition
      t.float :price, null: false
      t.integer :quantity, null: false
      t.timestamps null: false
    end
  end
end
