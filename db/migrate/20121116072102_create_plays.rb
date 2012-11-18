class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :name
      t.integer :theater_id
      t.integer :added_by
      t.integer :verified_by

      t.timestamps
    end
  end
end
