class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.decimal :price
      t.integer :quantity
      t.string :customer
      t.string :plate

      t.timestamps
    end
  end
end
