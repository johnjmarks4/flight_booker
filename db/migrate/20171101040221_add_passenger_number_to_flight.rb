class AddPassengerNumberToFlight < ActiveRecord::Migration[5.1]
  def change
    add_column :flights, :passenger_number, :integer
  end
end
