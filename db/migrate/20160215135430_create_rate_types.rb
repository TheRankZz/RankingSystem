class CreateRateTypes < ActiveRecord::Migration
  def change
    create_table :rate_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
