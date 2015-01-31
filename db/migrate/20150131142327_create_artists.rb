class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :crime
      t.string :url
      t.string :image

      t.timestamps
    end
  end
end
