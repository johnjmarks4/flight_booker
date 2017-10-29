class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :to_airport, foreign_key: true
      t.references :from_airport, foreign_key: true
      t.references :passenger, foreign_key: true
      t.references :flight, foreign_key: true
      t.string :name
      t.string :date

      t.timestamps
    end
  end
end