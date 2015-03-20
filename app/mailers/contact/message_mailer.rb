module Contact
  class MessageMailer < ActionMailer::Base
    def new_message(message)
      @message = message
      mail to: @message.to_email, from: Contact.from_email, reply_to: @message.email, subject: @message.subject
    end
  end
end
