class Flight < ApplicationRecord
  belongs_to :home, :class_name => "Airport"
  belongs_to :destination, :class_name => "Airport"

  def self.search_flights(origin, dest)
    [origin, dest].each(&:capitalize!)
    
    from_airport = Airport.find_by(name: origin)
    to_airport = Airport.find_by(name: dest)

    self.where(home_id: from_airport.id, destination_id: to_airport.id).first
  end

  def self.find_time
    dates = self.where("time > ?", DateTime.now).all
    days = dates.map { |date| date.time.strftime('%d') }
    months = dates.map { |date| date.time.strftime('%m') }
    [days, months]
  end
end