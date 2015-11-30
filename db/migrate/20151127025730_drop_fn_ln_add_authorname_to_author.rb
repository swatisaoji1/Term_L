class DropFnLnAddAuthornameToAuthor < ActiveRecord::Migration
  def change
  	remove_column :authors, :first_name
  	remove_column :authors, :last_name
  	add_column :authors, :author_name, :string
  end
end
