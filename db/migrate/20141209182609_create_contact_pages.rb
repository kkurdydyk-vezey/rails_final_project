class CreateContactPages < ActiveRecord::Migration
  def change
    create_table :contact_pages do |t|
      t.string :header
      t.text :hours
      t.text :contact_info

      t.timestamps
    end
  end
end
