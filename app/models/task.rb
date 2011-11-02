class Task < ActiveRecord::Base
  belongs_to :list
  scope :incomplete, where(:complete=>false)
  scope :complete, where(:complete=>true)
  scope :due_today, where(:complete=>false, :due=>Date.today)
  
  validates :name, :presence => true
  validates :list_id, :presence => true
end
