class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.references :language, foreign_key: true
      t.string :location_address
      t.integer :location_zipcode
      t.string :location_city
      t.datetime :birthday
      t.datetime :date_of_arrival
      t.datetime :registration_date
    end
    add_index :clients, :location_zipcode
    add_index :clients, :location_city
    add_index :clients, :birthday
    add_index :clients, :language_id
  end
end
