class FeedbackConfig < ActiveRecord::Base

  validates_presence_of :auto_response_email_subject, :auto_response_email_reply_to, :auto_response_email_body_html
  
end
