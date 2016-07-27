class CreateMissionTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :mission_types do |t|
      t.string :name
    end
  end
end
