class VouchersOrde < ActiveRecord::Migration[6.0]
  def change
    create_table :vouchers_orders, id: false do |t|
      t.belongs_to :voucher
      t.belongs_to :order
    end
  end
end
