class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.integer :zipcode
      t.string :town
    end
  end
end
