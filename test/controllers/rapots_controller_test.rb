require 'test_helper'

class RapotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rapots_index_url
    assert_response :success
  end

  test "should get store" do
    get rapots_store_url
    assert_response :success
  end

end
