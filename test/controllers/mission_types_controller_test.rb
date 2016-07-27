require 'test_helper'

class MissionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mission_type = mission_types(:one)
  end

  test "should get index" do
    get mission_types_url
    assert_response :success
  end

  test "should get new" do
    get new_mission_type_url
    assert_response :success
  end

  test "should create mission_type" do
    assert_difference('MissionType.count') do
      post mission_types_url, params: { mission_type: { name: @mission_type.name } }
    end

    assert_redirected_to mission_type_url(MissionType.last)
  end

  test "should show mission_type" do
    get mission_type_url(@mission_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_mission_type_url(@mission_type)
    assert_response :success
  end

  test "should update mission_type" do
    patch mission_type_url(@mission_type), params: { mission_type: { name: @mission_type.name } }
    assert_redirected_to mission_type_url(@mission_type)
  end

  test "should destroy mission_type" do
    assert_difference('MissionType.count', -1) do
      delete mission_type_url(@mission_type)
    end

    assert_redirected_to mission_types_url
  end
end
