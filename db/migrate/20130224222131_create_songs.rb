class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :release_id
      t.string :songname
      t.string :mp3file
      t.string :track_length

      t.timestamps
    end
  end
end
