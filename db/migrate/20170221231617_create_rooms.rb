class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :caster_id
      t.string :token
      t.string :status
      t.timestamps null: false
    end
  end
end
