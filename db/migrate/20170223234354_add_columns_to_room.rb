class AddColumnsToRoom < ActiveRecord::Migration
  def change
  	add_column :rooms, :track_changed, :boolean
  	add_column :rooms, :playing, :boolean
  end
end
