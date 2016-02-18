class CreateGameGenres < ActiveRecord::Migration
  def change
    create_table :game_genres do |t|
      t.references :game, result: true, foreign_key: true
      t.references :genre, result: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
