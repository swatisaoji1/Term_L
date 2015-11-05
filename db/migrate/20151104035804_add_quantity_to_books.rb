class AddQuantityToBooks < ActiveRecord::Migration
  def change
  	add_column :books, :quantity, :integer, :after => :price
  end
end
