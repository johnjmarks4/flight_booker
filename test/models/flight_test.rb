require 'test_helper'

class FlightTest < ActiveSupport::TestCase

  def setup
    home = Airport.find(1)
    destination = Airport.find(2)
    @flight = home.outgoing_flights.new(destination_id: 2)
  end

  test "is valid" do
    assert @flight.valid?
  end

  test "accepts time" do
    home = Airport.find(1)
    @flight = home.outgoing_flights.new(destination_id: 2, time: DateTime.parse("11/11/17"))
    assert @flight.valid?
  end

  test "accepts duration" do
    home = Airport.find(1)
    @flight = home.outgoing_flights.new(destination_id: 2, duration: 2)
    assert @flight.valid?
  end
end