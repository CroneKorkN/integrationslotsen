class CreateSeminars < ActiveRecord::Migration[5.0]
  def change
    create_table :seminars do |t|
      t.references :seminar_type, foreign_key: true
      t.datetime :date
    end
    add_index :seminars, :seminar_type
    add_index :seminars, :date
  end
end
