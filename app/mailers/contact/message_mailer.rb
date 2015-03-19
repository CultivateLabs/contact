module Contact
  class MessageMailer < ActionMailer::Base
    def new_message(message)
      @message = message
      mail to: Contact.to_email, from: @message.email, subject: Contact.subject
    end
  end
end
