class AddPlayIdToShow < ActiveRecord::Migration
  def change
    add_column :shows, :play_id, :integer
  end
end
