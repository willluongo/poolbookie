require 'test_helper'

class OutcomeTest < ActiveSupport::TestCase
  test "title cannot be null" do
    refute Outcome.new.valid?
  end
end
