require 'test_helper'

class RoutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @route = routes(:Route_1).route_gid
  end

  test "should get index" do
    get routes_url, as: :json
    assert_response :success
  end

  test "should show route" do
    get route_url(@route), as: :json
    assert_response :success
  end

  test "should get route trips" do
    get route_trips_url(@route), as: :json
    assert_response :success
  end
end
