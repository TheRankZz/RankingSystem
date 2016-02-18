class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      t.attachment :image
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
