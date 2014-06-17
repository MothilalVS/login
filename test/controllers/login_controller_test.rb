require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  test "should get check" do
    get :check
    assert_response :success
  end

end
