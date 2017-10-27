class Flight < ApplicationRecord
  belongs_to :home, :class_name => "Airport"
  belongs_to :destination, :class_name => "Airport"

  def self.search_flights(origin, dest, day, month, year)
    from_airport = Airport.find_by(id: origin)
    to_airport = Airport.find_by(id: dest)

    date = Time.parse("{#{year}/#{month}/#{day}").strftime("%Y-%m-%d").to_s

    self.where(home_id: from_airport.id, destination_id: to_airport.id, time: date).first
  end

  def self.find_time
    dates = self.where("time > ?", DateTime.now).all
    days = dates.map { |date| date.time.strftime('%d') }
    months = dates.map { |date| date.time.strftime('%m') }
    years = dates.map { |date| date.time.strftime('%y') }
    [days, months, years]
  end
end