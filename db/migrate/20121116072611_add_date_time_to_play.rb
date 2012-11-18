class AddDateTimeToPlay < ActiveRecord::Migration
  def change
    add_column :plays, :date_time, :datetime
  end
end
