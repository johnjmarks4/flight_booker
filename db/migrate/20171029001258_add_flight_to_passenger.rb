class AddFlightToPassenger < ActiveRecord::Migration[5.1]
  def change
    add_reference :passengers, :flight, foreign_key: false
  end
end