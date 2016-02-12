class CreateGameGenres < ActiveRecord::Migration
  def change
    create_table :game_genres do |t|
      t.references :game, index: true, foreign_key: true
      t.references :genre, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
