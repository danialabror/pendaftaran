require 'test_helper'

class KesehatansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kesehatans_index_url
    assert_response :success
  end

  test "should get store" do
    get kesehatans_store_url
    assert_response :success
  end

end
