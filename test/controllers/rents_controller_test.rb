require "test_helper"

class RentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get rents_create_url
    assert_response :success
  end
end
