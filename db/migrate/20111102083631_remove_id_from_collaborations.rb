class RemoveIdFromCollaborations < ActiveRecord::Migration
  def self.up
    remove_column :collaborations, :id
  end

  def self.down
    add_column :collaborations, :id
  end
end
