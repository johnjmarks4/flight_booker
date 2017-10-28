require 'test_helper'

class FlightsSearchTest < ActionDispatch::IntegrationTest

  test "show search results" do
    get flights_index_path
    post flights_index_path, params: { from: "3", to: "1", passengers: "1", day: "20", month: "01", year: "18" }
    assert_response :redirect
    follow_redirect!
    assert_response :found
    #assert_select "p", /.+/
  end
end