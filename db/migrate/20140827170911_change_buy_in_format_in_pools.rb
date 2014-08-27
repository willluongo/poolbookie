class ChangeBuyInFormatInPools < ActiveRecord::Migration
  def up
    remove_column :pools, :buy_in
    add_money :pools, :wager, amount: { null: false, default: 500}
  end

  def down
    remove_column :pools, :wager
    add_column :pools, :buy_in, :integer
  end
end
