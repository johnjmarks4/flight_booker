require 'test_helper'

class AirportTest < ActiveSupport::TestCase

  def setup
    @airport = Airport.create(name: "Ohare")
  end

  test "is valid" do
    assert @airport.valid?
  end
end