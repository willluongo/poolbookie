class Wager < ActiveRecord::Base
  belongs_to :outcome
  belongs_to :user

  validates :outcome_id, presence: true
  validates :user_id, presence: true
end
