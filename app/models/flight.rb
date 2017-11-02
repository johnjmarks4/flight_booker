class Flight < ApplicationRecord
  has_many :bookings, :foreign_key => :flight_id
  has_many :passengers, :through => :bookings, :foreign_key => :passenger_id
  belongs_to :home, :class_name => "Airport"
  belongs_to :destination, :class_name => "Airport"

  def self.search_flights(origin, dest, date)
    from_airport = Airport.find_by(id: origin)
    to_airport = Airport.find_by(id: dest)    

    self.where(home_id: from_airport.id, destination_id: to_airport.id, time: date).all
  end

  def self.find_time
    dates = []
    self.where("time > ?", DateTime.now).all.each do |flight|
      dates << flight.time
    end
    dates
  end
end