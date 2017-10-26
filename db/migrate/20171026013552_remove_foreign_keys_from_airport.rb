class RemoveForeignKeysFromAirport < ActiveRecord::Migration[5.1]
  def change
    remove_column :airports, :incoming_flight_id
    remove_column :airports, :outgoing_flight_id
  end
end
