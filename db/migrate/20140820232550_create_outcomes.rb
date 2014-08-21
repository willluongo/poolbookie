class CreateOutcomes < ActiveRecord::Migration
  def change
    create_table :outcomes do |t|
      t.string :title, null: false
      t.index :title, unique: true
      t.string :summary
      t.timestamps
    end
  end
end
