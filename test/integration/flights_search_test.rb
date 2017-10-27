require 'test_helper'

class FlightsSearchTest < ActionDispatch::IntegrationTest

  test "show search results" do
    get flights_index_path
    post flights_index_path, params: { from: "Ohare", to: "Jfk" }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    #assert_select "p", /.+/
  end
end