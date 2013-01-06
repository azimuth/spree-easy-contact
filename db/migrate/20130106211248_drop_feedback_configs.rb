class DropFeedbackConfigs < ActiveRecord::Migration
  def self.up
    drop_table :feedback_configs
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
