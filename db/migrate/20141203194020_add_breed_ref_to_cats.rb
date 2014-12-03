class AddBreedRefToCats < ActiveRecord::Migration
  def change
    add_reference :cats, :breed, index: true
  end
end
