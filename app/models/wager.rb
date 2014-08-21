class Wager < ActiveRecord::Base
  belongs_to :outcome

  validates :outcome_id, presence: true
end
