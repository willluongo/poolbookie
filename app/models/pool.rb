class Pool < ActiveRecord::Base
  has_many :outcomes, dependent: :destroy

  monetize :wager_cents, :allow_nil => false,
  :numericality => {
    :greater_than => 0
  }

  validates :title, presence: true

  def total_pot
    pooltotal = Money.new(0, "USD")
    self.outcomes.each do |outcome| 
      pooltotal += self.wager * outcome.wagers.count
    end
    return pooltotal
  end
end
