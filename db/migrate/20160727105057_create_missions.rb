class CreateMissions < ActiveRecord::Migration[5.0]
  def change
    create_table :missions do |t|
      t.references :mission_type, foreign_key: true
      t.references :guide, foreign_key: true
      t.references :client, foreign_key: true
      t.datetime :begin
      t.datetime :end

      t.timestamps
    end
    add_index :missions, :begin
    add_index :missions, :end
  end
end
