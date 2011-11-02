require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  setup do
    @user = users(:joe)
  end
  
  test "Create User" do
      post :create, {
        'username' => "new.user",
        'name' => "New User",
        'email' => "new@user.com",
        'password' => "12345",
        'password_confirmation' => "12345"
      }

    assert_redirected_to root_path(assigns(:user))
  end

end
