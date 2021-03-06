require "contact/engine"

module Contact
  mattr_accessor :to_email, :from_email, :subject, :success_message, :base_controller, :contact_page_path
  @@to_email = "to@example.com"
  @@from_email = "from@example.com"
  @@subject = "New Contact Form Submission"
  @@success_message = "Success! Your message has been sent and we'll get back to you as soon as possible."
  @@base_controller = "::ApplicationController"
  @@contact_page_path = "contact"

  def self.configure(&block)
    yield self
  end

  def self.base_controller
    @@base_controller.constantize
  end
end
