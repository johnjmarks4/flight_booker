class Airport < ApplicationRecord
  has_many :incoming_flights
  has_many :outgoing_flights
end