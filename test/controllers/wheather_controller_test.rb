require "test_helper"

class WheatherControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wheather_index_url
    assert_response :success
  end
end
