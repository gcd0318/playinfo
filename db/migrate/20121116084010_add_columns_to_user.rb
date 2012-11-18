class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :seed, :string
    add_column :users, :hashed_password, :string
  end
end
