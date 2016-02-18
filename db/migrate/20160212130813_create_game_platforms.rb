class CreateGamePlatforms < ActiveRecord::Migration
  def change
    create_table :game_platforms do |t|
      t.references :game, result: true, foreign_key: true
      t.references :platform, result: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
