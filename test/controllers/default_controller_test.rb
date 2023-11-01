require "test_helper"

class DefaultControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get default_index_url
    assert_response :success
  end

  test "should get home" do
    get default_home_url
    assert_response :success
  end
end
