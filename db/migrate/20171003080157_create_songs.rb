class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
