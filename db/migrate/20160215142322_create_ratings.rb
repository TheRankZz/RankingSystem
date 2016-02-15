class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :game_id
      t.integer :user_id
      t.text :description
      t.string :title

      t.timestamps null: false
    end
  end
end
