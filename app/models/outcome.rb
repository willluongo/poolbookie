class Outcome < ActiveRecord::Base
  belongs_to :pool
  has_many :wagers, dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :pool_id, presence: true
end
