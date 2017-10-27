class Flight < ApplicationRecord
  belongs_to :home, :class_name => "Airport"
  belongs_to :destination, :class_name => "Airport"

  def self.search_flights(origin, dest)
    [origin, dest].each(&:capitalize!)
    
    from_airport = Airport.find_by(name: origin)
    to_airport = Airport.find_by(name: dest)

    self.where(home_id: from_airport.id, destination_id: to_airport.id).first
  end
end