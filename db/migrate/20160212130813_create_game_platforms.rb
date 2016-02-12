class CreateGamePlatforms < ActiveRecord::Migration
  def change
    create_table :game_platforms do |t|
      t.references :game, index: true, foreign_key: true
      t.references :platform, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
