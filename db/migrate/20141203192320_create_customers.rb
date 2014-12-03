class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :telephone
      t.string :city
      t.string :address
      t.string :postal_code

      t.timestamps
    end
  end
end
