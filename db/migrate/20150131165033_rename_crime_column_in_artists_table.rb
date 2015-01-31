class RenameCrimeColumnInArtistsTable < ActiveRecord::Migration
  def up
  	rename_column :artists, :crime, :crime_id
  end

  def down
  	rename_column :artists, :crime_id, :crime
  end
end
