class AddReturnedToOrderEntries < ActiveRecord::Migration
  def change
    add_column :order_entries, :returned, :boolean, :default => false, :null => false
  end
end
