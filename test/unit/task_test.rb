require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  
  test "Create Task" do
    list = List.new
    task = list.tasks.new(
      :name => "Test Task"
    )
  
    assert task.valid?
  end

  test "Required Attributes" do
    list = List.new
    task = list.tasks.new
    assert task.invalid?
    assert task.errors[:name].any?
    assert task.errors[:list_id].any?
  end
end
