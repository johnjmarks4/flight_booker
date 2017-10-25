class CreateAirport < ActiveRecord::Migration[5.1]
  def change
    create_table :airports do |t|
      t.string :name
      t.references :incoming_flight
      t.references :outgoing_flight

      t.timestamps
    end
  end
end