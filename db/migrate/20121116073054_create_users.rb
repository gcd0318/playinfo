class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :url
      t.string :weibo
      t.boolean :is_player
      t.string :email
      t.string :bio
      t.string :tel

      t.timestamps
    end
  end
end
