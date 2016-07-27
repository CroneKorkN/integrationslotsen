class CreateGuides < ActiveRecord::Migration[5.0]
  def change
    create_table :guides do |t|
      t.references :member, foreign_key: true
    end
  end
end
