class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :name
      t.string :story

      t.timestamps
    end
  end
end
