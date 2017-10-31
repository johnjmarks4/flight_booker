class Flight < ApplicationRecord
  has_many :bookings, :foreign_key => :flight_id
  has_many :passengers, :through => :bookings, :foreign_key => :passenger_id
  belongs_to :home, :class_name => "Airport"
  belongs_to :destination, :class_name => "Airport"
  has_many :passengers, :through => :booking
  has_many :bookings, :dependent => :destroy, :inverse_of => :passenger

  def self.search_flights(origin, dest, day, month, year)
    from_airport = Airport.find_by(id: origin)
    to_airport = Airport.find_by(id: dest)

    date = Time.parse("{#{year}/#{month}/#{day}").strftime("%Y-%m-%d")

    self.where(home_id: from_airport.id, destination_id: to_airport.id, time: date).all
  end

  def self.find_time
    dates = self.where("time > ?", DateTime.now).all
    days = dates.map { |date| date.time[8..9] }
    months = dates.map { |date| date.time[5..6] }
    years = dates.map { |date| date.time[2..3] }
    [days, months, years]
  end
end