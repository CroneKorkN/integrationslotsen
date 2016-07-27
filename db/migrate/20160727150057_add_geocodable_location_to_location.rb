class AddGeocodableLocationToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :geocodable_location, :string
  end
end
