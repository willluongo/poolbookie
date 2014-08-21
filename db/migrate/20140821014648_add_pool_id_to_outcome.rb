class AddPoolIdToOutcome < ActiveRecord::Migration
  def change
    add_reference :outcomes, :pool, index: true
  end
end
