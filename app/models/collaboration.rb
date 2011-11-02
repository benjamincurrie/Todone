class Collaboration < ActiveRecord::Base
  belongs_to :lists
  belongs_to :users
  
  validates :user_id, :presence => true
  validates :list_id, :presence => true
end
