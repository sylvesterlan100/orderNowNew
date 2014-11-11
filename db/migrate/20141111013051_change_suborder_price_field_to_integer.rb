class ChangeSuborderPriceFieldToInteger < ActiveRecord::Migration
  def change
  	remove_column :suborders, :price
  	add_column :suborders, :price, :decimal, precision: 5, scale: 2
  end
end
