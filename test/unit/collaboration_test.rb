require 'test_helper'

class CollaborationTest < ActiveSupport::TestCase

  test "Create Collaboration" do
    list = List.new
    collaboration = list.collaborations.new(
      :user_id => 1
    )

    assert collaboration.valid?
  end

  test "Required Attributes" do
    list = List.new
    collaboration = list.collaborations.new
    assert collaboration.invalid?
    assert collaboration.errors[:user_id].any?
    assert collaboration.errors[:list_id].any?
  end

end
