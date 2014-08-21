class Pool < ActiveRecord::Base
  has_many :outcomes, dependent: :destroy

  validates :title, presence: true
  validates :buy_in, presence: true, numericality: { greater_than: 0 }
end
