require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get entrance" do
    get users_entrance_url
    assert_response :success
  end

end
