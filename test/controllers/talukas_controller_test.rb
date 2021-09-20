require "test_helper"

class TalukasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get talukas_index_url
    assert_response :success
  end

  test "should get show" do
    get talukas_show_url
    assert_response :success
  end

  test "should get new" do
    get talukas_new_url
    assert_response :success
  end

  test "should get edit" do
    get talukas_edit_url
    assert_response :success
  end
end
