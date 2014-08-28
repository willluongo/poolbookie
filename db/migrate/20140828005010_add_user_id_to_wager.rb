class AddUserIdToWager < ActiveRecord::Migration
  def change
  	add_reference :wagers, :user, :index =>true
  end
end
