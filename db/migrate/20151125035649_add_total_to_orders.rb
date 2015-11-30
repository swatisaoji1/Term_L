class AddTotalToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :total, :decimal, precision: 12, scale: 3
  end
end
