class AddSaleTypeToBooks < ActiveRecord::Migration
  def change
  	add_column :books, :sale_type, :string
  end
end
