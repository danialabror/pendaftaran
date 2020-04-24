require 'test_helper'

class PenerimaansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get penerimaans_index_url
    assert_response :success
  end

  test "should get store" do
    get penerimaans_store_url
    assert_response :success
  end

end
