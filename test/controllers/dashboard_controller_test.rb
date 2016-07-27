require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get admin" do
    get dashboard_admin_url
    assert_response :success
  end

  test "should get guide" do
    get dashboard_guide_url
    assert_response :success
  end

end
