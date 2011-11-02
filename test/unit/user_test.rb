require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "Create User" do
    user = User.new(
      :username => "test.user",
      :name => "Test User",
      :email => "testuser@todone.com",
      :password => "12345"
    )
    
    assert user.valid?
  end
  
  test "Required Attributes" do
    user = User.new
    assert user.invalid?
    assert user.errors[:username].any?
    assert user.errors[:name].any?
    assert user.errors[:email].any?
    assert user.errors[:password].any?
  end
  
  test "Unique Attributes" do
    user1 = User.new(
      :username => "test.user",
      :name => "Test User",
      :email => "testuser@todone.com",
      :password => "12345"
    ).save
    
    user2 = User.new(
      :username => "test.user",
      :name => "Test User",
      :email => "testuser@todone.com",
      :password => "12345"
    )
    
    assert user2.invalid?
    assert user2.errors[:username].any?
    assert user2.errors[:email].any?
  end
end
