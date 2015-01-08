class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone_number
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
