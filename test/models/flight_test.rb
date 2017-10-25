require 'test_helper'

class FlightTest < ActiveSupport::TestCase

  def setup
    @airport = Airport.find(1)
    @flight = @airport.incoming_flights.create
  end

  test "is valid" do
    assert @flight.valid?
  end
end