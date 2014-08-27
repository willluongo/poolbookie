require 'test_helper'

class PoolTest < ActiveSupport::TestCase
  test "#buy_in should error when less than 1" do
    refute Pool.new(wager_cents: -1).valid?, 'buy_in must be greater than 0'
    refute Pool.new(wager_cents: 0).valid?, 'buy_in must be greater than 0'
  end
end
