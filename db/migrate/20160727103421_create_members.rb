class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :password_digest
      t.string :name
      t.datetime :registration_date
    end
    add_index :members, :username
    add_index :members, :email
  end
end
