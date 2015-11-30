class CreateOrderEntries < ActiveRecord::Migration
  def change
    create_table :order_entries do |t|
      t.integer :type
      t.integer :quantity
      t.decimal :unit_cost
      t.references :book, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
