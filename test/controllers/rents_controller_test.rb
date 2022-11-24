require "test_helper"

class RentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get rents_create_url
    assert_response :success
  end

  test "should get update" do
    get rents_update_url
    assert_response :success
  end

  test "should get destroy" do
    get rents_destroy_url
    assert_response :success
  end
end
