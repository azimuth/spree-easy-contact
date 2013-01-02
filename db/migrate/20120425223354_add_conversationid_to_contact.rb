class AddConversationidToContact < ActiveRecord::Migration
  def self.up
    add_column :contacts, :conversation_id, :integer
  end

  def self.down
    drop_column :contacts, :conversation_id
  end
end
