class MoveTopicsToConversation < ActiveRecord::Migration
  def self.up
    add_column :conversations, :topic_id, :integer
    remove_column :contacts, :topic_id
  end

  def self.down
  end
end
