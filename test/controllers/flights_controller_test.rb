require 'test_helper'

class FlightsControllerTest < ActionDispatch::IntegrationTest

  test "shows form in index view" do
    get "/flights/index"
    assert_select "form"
  end

  test "shows dropdown menu" do
    get "/flights/index"
    assert_select "select[name=from]"
    assert_not_empty "option"
  end
end