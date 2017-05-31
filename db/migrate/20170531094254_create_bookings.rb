class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :villa
      t.references :user
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
