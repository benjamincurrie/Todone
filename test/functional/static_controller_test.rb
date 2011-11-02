require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  
  test "Gets Home Page" do
    get :index
    assert_response :success
  end
  
end
