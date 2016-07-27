class AddLocatableToLocation < ActiveRecord::Migration[5.0]
  def change
    add_reference :locations, :locatable, polymorphic: true
  end
end
