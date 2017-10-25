require 'test_helper'

class AirportTest < ActiveSupport::TestCase

  def setup
    @airport = Airport.create(name: "O'Hare")
  end

  test "is valid" do
    assert @airport.valid?
  end
end