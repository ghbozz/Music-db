class AddBpmToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :bpm, :integer
  end
end
