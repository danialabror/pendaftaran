require 'test_helper'

class AlamatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alamats_index_url
    assert_response :success
  end

  test "should get store" do
    get alamats_store_url
    assert_response :success
  end

end
