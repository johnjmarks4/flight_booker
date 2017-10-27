require 'test_helper'

class FlightsSearchTest < ActionDispatch::IntegrationTest

  def setup
    #@flight = Flight.new(home_id: 1, destination_id: 2)
  end

  test "show search results" do
    get flights_index_path
    post flights_index_path, params: { from: "Ohare", to: "Jfk" }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p", /.+/
  end
end