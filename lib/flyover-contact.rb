require "contact/engine"

module Contact
  mattr_accessor :to_email, :from_email, :subject
  @@to_email = "to@example.com"
  @@from_email = "from@example.com"
  @@subject = "New Contact Form Submission"

  def self.configure(&block)
    yield self
  end
end
