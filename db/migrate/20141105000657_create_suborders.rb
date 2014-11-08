class CreateSuborders < ActiveRecord::Migration
  def change
    create_table :suborders do |t|
      t.string :item
      t.integer :amount
      t.float :price

      t.timestamps
    end
  end
end
