class CreateOrgs < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.string :name
      t.string :address
      t.string :url

      t.timestamps
    end
  end
end
