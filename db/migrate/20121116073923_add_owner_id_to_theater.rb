class AddOwnerIdToTheater < ActiveRecord::Migration
  def change
    add_column :theaters, :owner_id, :integer
  end
end
