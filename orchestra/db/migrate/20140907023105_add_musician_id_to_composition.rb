class AddMusicianIdToComposition < ActiveRecord::Migration
  def change
    add_column :compositions, :musician_id, :integer
  end
end
