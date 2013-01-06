class ContactMailer < ActionMailer::Base
  helper "spree/base"

  def message_email(message)
    subject = "#{Spree::Config[:site_name]} - #{t('message_from')} #{message.email}"

    @message = message
    mail(:to => message.conversation.topic.email, :subject => subject, :reply_to => message.email)
  end
  def message_received_email(message)
    @feedback_config = FeedbackConfig.first
    mail(:to => message.email, :subject => @feedback_config.auto_response_email_subject, :reply_to => @feedback_config.auto_response_email_reply_to) do |format|
      format.html { render :text => @feedback_config.auto_response_email_body_html }
      format.text { render :text => @feedback_config.auto_response_email_body_text }
    end
  end
end
