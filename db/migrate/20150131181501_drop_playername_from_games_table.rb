class DropPlayernameFromGamesTable < ActiveRecord::Migration
  def up
  	remove_column :games, :player_name
  end

  def down
  	add_column :games, :player_name
  end
end
