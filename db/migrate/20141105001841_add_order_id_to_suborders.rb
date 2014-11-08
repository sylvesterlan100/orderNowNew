class AddOrderIdToSuborders < ActiveRecord::Migration
  def change
    add_column :suborders, :order_id, :integer
    add_index :suborders, :order_id
  end
end
