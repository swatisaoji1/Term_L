class AddTotalPriceToOrderEntries < ActiveRecord::Migration
  def change
    add_column :order_entries, :total_price, :decimal, precision: 12, scale: 3
  end
end
