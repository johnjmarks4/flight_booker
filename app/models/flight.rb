class Flight < ApplicationRecord
  belongs_to :home, :class_name => "Airport"
  belongs_to :destination, :class_name => "Airport"
end