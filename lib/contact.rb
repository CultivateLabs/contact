require "contact/engine"

module Contact
  mattr_accessor :to_email
  @@to_email = "user@example.com"

  def self.configure(&block)
    yield self
  end
end
