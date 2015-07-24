require 'test_helper'

class ViewersControllerTest < ActionController::TestCase
  test "should get result" do
    get :result
    assert_response :success
  end

end
