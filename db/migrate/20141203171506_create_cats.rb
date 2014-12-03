class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.string :age
      t.string :colour
      t.decimal :price
      t.date :rescue_date
      t.string :image
      t.text :description
    # also get pk here.
      t.timestamps
    end
  end
end
