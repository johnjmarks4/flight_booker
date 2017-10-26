require 'test_helper'

class FlightsControllerTest < ActionDispatch::IntegrationTest

  test "shows form in index view" do
    get "/flights/index"
    assert_select "form"
    assert_select "input[name=from]"
  end
end