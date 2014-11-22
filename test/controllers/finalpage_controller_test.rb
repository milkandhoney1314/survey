require 'test_helper'

class FinalpageControllerTest < ActionController::TestCase
  test "should get direct" do
    get :direct
    assert_response :success
  end

end
