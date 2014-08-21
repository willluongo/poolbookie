class Pool < ActiveRecord::Base
  validates :title, presence: true
  validates :buy_in, presence: true, numericality: { greater_than: 0 }
end
