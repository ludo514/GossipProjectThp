require 'test_helper'

class SessionControllersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get session_controllers_new_url
    assert_response :success
  end

  test "should get create" do
    get session_controllers_create_url
    assert_response :success
  end

  test "should get destroy" do
    get session_controllers_destroy_url
    assert_response :success
  end

end
