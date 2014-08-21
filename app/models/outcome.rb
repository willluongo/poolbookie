class Outcome < ActiveRecord::Base
  belongs_to :pool

  validates :title, presence: true, uniqueness: true
  validates :pool_id, presence: true
end
