class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.string :name
      t.string :city
      t.string :address
      t.string :tel
      t.string :email
      t.string :weibo

      t.timestamps
    end
  end
end
