class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.string :title, null: false
      t.integer :buy_in, null: false, default: 500

      t.timestamps
    end
  end
end
