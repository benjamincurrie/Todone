require 'test_helper'

class ListTest < ActiveSupport::TestCase
  test "Create List" do
    list = List.new(
      :name => "Test List",
      :user_id => 1
    )
    
    assert list.valid?
  end
  
  test "Required Attributes" do
    list = List.new
    assert list.invalid?
    assert list.errors[:name].any?
    assert list.errors[:user_id].any?
  end
end
