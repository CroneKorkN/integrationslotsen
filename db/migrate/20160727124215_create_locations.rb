class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.integer :zipcode
      t.string :town

      t.timestamps
    end
    add_index :locations, :address
    add_index :locations, :zipcode
    add_index :locations, :town
  end
end
