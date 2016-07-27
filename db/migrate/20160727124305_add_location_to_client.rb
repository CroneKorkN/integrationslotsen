class AddLocationToClient < ActiveRecord::Migration[5.0]
  def change
    add_reference :clients, :location, foreign_key: true
  end
end
