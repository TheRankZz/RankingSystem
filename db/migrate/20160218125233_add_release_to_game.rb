class AddReleaseToGame < ActiveRecord::Migration
  def change
    add_column :games, :releasedate, :date
  end
end
