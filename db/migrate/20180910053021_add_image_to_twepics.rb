class AddImageToTwepics < ActiveRecord::Migration[5.1]
  def change
    add_column :twepics, :image, :text
  end
end
