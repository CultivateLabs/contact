module Contact
  class MessageMailer < ActionMailer::Base
    default from: Contact.from_email

    def new_message(message)
      @message = message
      mail to: Contact.to_email, subject: Contact.subject
    end
  end
end
