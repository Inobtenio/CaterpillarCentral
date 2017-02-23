class AddColumnsToRoom < ActiveRecord::Migration
  def change
  	add_column :rooms, :changed, :boolean
  	add_column :rooms, :playing, :boolean
  end
end
