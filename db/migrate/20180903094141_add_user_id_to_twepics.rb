class AddUserIdToTwepics < ActiveRecord::Migration[5.1]
  def change
  add_column :twepics, :user_id, :integer
  end
end
