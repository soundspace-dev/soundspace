class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :space_id
      t.timestamp :checkin
      t.timestamp :checkout
      t.timestamp :confirm_date
      t.integer :confirm_by
      t.timestamp :pay_date
      t.string :pay_type
      t.string :status
      t.boolean :active

      t.timestamps
    end
  end
end
