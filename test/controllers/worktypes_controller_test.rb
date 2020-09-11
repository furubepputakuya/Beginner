require 'test_helper'

class WorktypesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get worktypes_new_url
    assert_response :success
  end

  test "should get create" do
    get worktypes_create_url
    assert_response :success
  end

end
