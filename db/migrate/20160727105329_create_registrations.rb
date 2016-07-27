class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.references :guide, foreign_key: true
      t.references :seminar, foreign_key: true
    end
  end
end
