class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :facebook_id
      t.string :room_id
      t.boolean :caster
      t.string :profile_picture

      t.timestamps null: false
    end
  end
end
