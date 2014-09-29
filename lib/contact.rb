require "contact/engine"

module Contact
  class << self
    mattr_accessor :to_email
    self.to_email = "david@flyoverworks.com"
  end

  def self.configure(&block)
    yield self
  end
end
