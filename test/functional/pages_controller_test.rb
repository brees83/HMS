require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get send_times" do
    get :send_times
    assert_response :success
  end

  test "should get controls" do
    get :controls
    assert_response :success
  end

end
