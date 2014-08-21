class CreateWagers < ActiveRecord::Migration
  def change
    create_table :wagers do |t|
      t.references :outcome, index: true

      t.timestamps
    end
  end
end
