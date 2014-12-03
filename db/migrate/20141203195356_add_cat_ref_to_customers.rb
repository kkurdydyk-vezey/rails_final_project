class AddCatRefToCustomers < ActiveRecord::Migration
  def change
    add_reference :customers, :customer, index: true
  end
end
