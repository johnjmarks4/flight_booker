class AddPassengersToFlight < ActiveRecord::Migration[5.1]
  def change
    add_column :flights, :passengers, :integer
  end
end
