class List < ActiveRecord::Base
  belongs_to :user, :polymorphic => true
  has_many :tasks
  
  has_many :collaborations
  has_many :users, :through => :collaborations
  
  validates :name, :presence => true
end
