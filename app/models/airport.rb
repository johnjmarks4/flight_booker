class Airport < ApplicationRecord
  has_many :incoming_flights, :class_name => "Flight", :foreign_key => "incoming_flight_id"
  has_many :outgoing_flights, :class_name => "Flight", :foreign_key => "outgoing_flight_id"
end