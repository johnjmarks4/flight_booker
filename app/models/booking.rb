class Booking < ApplicationRecord
  belongs_to :flight
  belongs_to :passenger
  belongs_to :to_airport
  belongs_to :from_airport
end