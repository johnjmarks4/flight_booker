class AddFlightInfoToFlight < ActiveRecord::Migration[5.1]
  def change
    add_column :flights, :time, :string
    add_column :flights, :duration, :integer
  end
end
