require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get profiles_home_url
    assert_response :success
  end

  test "should get about" do
    get profiles_about_url
    assert_response :success
  end

end
