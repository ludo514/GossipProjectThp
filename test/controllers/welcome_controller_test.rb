require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get bonjour" do
    get welcome_bonjour_url
    assert_response :success
  end

end
