class CreateAboutPages < ActiveRecord::Migration
  def change
    create_table :about_pages do |t|
      t.string :header
      t.string :image
      t.text :paragraph
      t.text :paragraph2

      t.timestamps
    end
  end
end
