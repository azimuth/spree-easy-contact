class CreateFeedbackConfigTable < ActiveRecord::Migration
  def self.up
    create_table :feedback_configs do |t|
      t.string :auto_response_email_subject
      t.string :auto_response_email_reply_to
      t.text :auto_response_email_body_html
      t.text :auto_response_email_body_text
      t.timestamps
    end
  end

  def self.down
    drop_table :feedback_configs
  end
end
