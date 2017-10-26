class CreateAirport < ActiveRecord::Migration[5.1]
  def change
    create_table :airports do |t|
      t.string :name
      t.references :incoming_flight, foreign_key: false
      t.references :outgoing_flight, foreign_key: false

      t.timestamps
    end
  end
end