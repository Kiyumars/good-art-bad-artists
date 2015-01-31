class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :player_name
      t.integer :score
      t.integer :rounds
      t.integer :correct_guesses

      t.timestamps
    end
  end
end
