class CreateSeminarTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :seminar_types do |t|
      t.string :name
    end
  end
end
