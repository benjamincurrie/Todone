require 'test_helper'

class SessionsControllerTest < ActionController::TestCase

  setup do
    @user = User.create users(:joe).attributes
  end
  
  test "Should create session" do
    assert true
  end

end
