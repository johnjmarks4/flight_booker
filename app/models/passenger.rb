class Passenger < ApplicationRecord
  has_one :booking, :dependent => :destroy, :inverse_of => :flight
  has_many :flights, :through => :booking
end