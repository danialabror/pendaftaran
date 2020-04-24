require 'test_helper'

class FinishsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get finishs_index_url
    assert_response :success
  end

end
