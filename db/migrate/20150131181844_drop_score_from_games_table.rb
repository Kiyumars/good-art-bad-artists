class DropScoreFromGamesTable < ActiveRecord::Migration
  def up
  	remove_column :games, :score
  end

  def down
  	add_column :games, :score
  end
end
