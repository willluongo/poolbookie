require 'test_helper'

class PoolTest < ActiveSupport::TestCase
  test "#buy_in should error when less than 1" do
    refute Pool.new(buy_in: -1).valid?, 'buy_in must be greater than 0'
    refute Pool.new(buy_in: 0).valid?, 'buy_in must be greater than 0'
  end
end
