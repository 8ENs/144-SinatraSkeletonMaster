class AddTimestamps < ActiveRecord::Migration
  def change
    remove_column(:messages, :url)
    add_timestamps(:messages)
  end
end
