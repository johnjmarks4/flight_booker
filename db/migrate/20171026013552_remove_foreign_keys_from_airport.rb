class RemoveForeignKeysFromAirport < ActiveRecord::Migration[5.1]
  def change
    remove_column :airports, :incoming_flight_id, :integer
    remove_column :airports, :outgoing_flight_id, :integer
  end
end
