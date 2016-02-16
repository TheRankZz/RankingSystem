class CreateRatingCategories < ActiveRecord::Migration
  def change
    create_table :rating_categories do |t|
      t.integer :rating_id
      t.integer :category_id
      t.integer :score

      t.timestamps null: false
    end
  end
end
