class CreateFlight < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.references :outgoing_flight, foreign_key: true
      t.references :incoming_flight, foreign_key: true

      t.timestamps
    end
  end
end