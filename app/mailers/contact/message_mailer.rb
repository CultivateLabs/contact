module Contact
  class MessageMailer < ActionMailer::Base
    default from: "mailer@inklingmarkets.com"

    def new_message(message)
      @message = message
      mail to: Contact.to_email, subject: "Inkling Contact Form Submission"
    end
  end
end
