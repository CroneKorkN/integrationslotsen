class RemoveLocationFromClient < ActiveRecord::Migration[5.0]
  def change
    remove_column :clients, :location_address, :string
    remove_column :clients, :location_zipcode, :string
    remove_column :clients, :location_city, :string
  end
end
