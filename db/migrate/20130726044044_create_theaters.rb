class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.string :mane
      t.string :address

      t.timestamps
    end
  end
end
