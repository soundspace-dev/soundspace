class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :name
      t.integer :owner_id
      t.text :features
      t.text :description
      t.text :equipment
      t.integer :rate_hourly
      t.integer :rate_halfday
      t.integer :rate_daily
      t.integer :rate_weekly
      t.string :address
      t.string :city
      t.string :state
      t.boolean :active
      t.integer :calendar_id

      t.timestamps
    end
  end
end
