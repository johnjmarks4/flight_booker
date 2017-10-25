class Airport < ApplicationRecord
  has_many :incoming_flights, :class_name => "Flight", :foreign_key => "destination_id"
  has_many :outgoing_flights, :class_name => "Flight", :foreign_key => "home_id"
end