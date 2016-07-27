require 'test_helper'

class SeminarTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seminar_type = seminar_types(:one)
  end

  test "should get index" do
    get seminar_types_url
    assert_response :success
  end

  test "should get new" do
    get new_seminar_type_url
    assert_response :success
  end

  test "should create seminar_type" do
    assert_difference('SeminarType.count') do
      post seminar_types_url, params: { seminar_type: { name: @seminar_type.name } }
    end

    assert_redirected_to seminar_type_url(SeminarType.last)
  end

  test "should show seminar_type" do
    get seminar_type_url(@seminar_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_seminar_type_url(@seminar_type)
    assert_response :success
  end

  test "should update seminar_type" do
    patch seminar_type_url(@seminar_type), params: { seminar_type: { name: @seminar_type.name } }
    assert_redirected_to seminar_type_url(@seminar_type)
  end

  test "should destroy seminar_type" do
    assert_difference('SeminarType.count', -1) do
      delete seminar_type_url(@seminar_type)
    end

    assert_redirected_to seminar_types_url
  end
end
