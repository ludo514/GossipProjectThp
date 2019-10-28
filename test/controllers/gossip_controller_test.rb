require 'test_helper'

class GossipControllerTest < ActionDispatch::IntegrationTest
  test "should get contenue" do
    get gossip_contenue_url
    assert_response :success
  end

end
