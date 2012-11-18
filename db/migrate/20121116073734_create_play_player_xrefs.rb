class CreatePlayPlayerXrefs < ActiveRecord::Migration
  def change
    create_table :play_player_xrefs do |t|
      t.integer :play_id
      t.integer :user_id

      t.timestamps
    end
  end
end
