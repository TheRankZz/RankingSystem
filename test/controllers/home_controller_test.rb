require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :result
    assert_response :success
  end

end
