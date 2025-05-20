class CreatePlayersAlbums < ActiveRecord::Migration[8.0]
  def change
    create_table :players_albums do |t|
      t.references :player, null: false, foreign_key: true
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
