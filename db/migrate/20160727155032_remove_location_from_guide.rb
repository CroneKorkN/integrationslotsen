class RemoveLocationFromGuide < ActiveRecord::Migration[5.0]
  def change
    remove_column :guides, :location_id, :string
  end
end
