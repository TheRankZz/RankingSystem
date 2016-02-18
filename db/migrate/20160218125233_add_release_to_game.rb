class AddReleaseToGame < ActiveRecord::Migration
  def change
    add_column :games, :releaseDate, :date
  end
end
