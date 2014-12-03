class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :amount
      t.decimal :taxes
      t.decimal :total
      t.string :order_date

      t.timestamps
    end
  end
end
