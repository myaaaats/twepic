require 'test_helper'

class TwepicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twepics_index_url
    assert_response :success
  end

end
