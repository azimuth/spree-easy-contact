class ContactMailer < ActionMailer::Base
  helper "spree/base"

  # Mails a message to the topic recipients list (internal)
  def message_email(message)
    subject = "#{Spree::Config[:site_name]} - #{t('message_from')} #{message.email}"

    @message = message
    mail(:to => message.conversation.topic.email, :subject => subject, :reply_to => message.email)
  end

  # Mails a message to the customer, acknowledging the contact
  def message_received_email(message)
    mail(:to => message.email, :subject => Spree::Config[:auto_response_email_subject], :reply_to => Spree::Config[:auto_response_email_reply_to])
  end
end
