require 'test_helper'

class CansControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cans_new_url
    assert_response :success
  end

  test "should get create" do
    get cans_create_url
    assert_response :success
  end

  test "should get update" do
    get cans_update_url
    assert_response :success
  end

  test "should get edit" do
    get cans_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get cans_destroy_url
    assert_response :success
  end

  test "should get index" do
    get cans_index_url
    assert_response :success
  end

  test "should get show" do
    get cans_show_url
    assert_response :success
  end

end
