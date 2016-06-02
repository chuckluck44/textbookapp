require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get history" do
    get :history
    assert_response :success
  end

  test "should get settings" do
    get :settings
    assert_response :success
  end

end
