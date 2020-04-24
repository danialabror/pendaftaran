require 'test_helper'

class OrtusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ortus_index_url
    assert_response :success
  end

  test "should get store" do
    get ortus_store_url
    assert_response :success
  end

end
