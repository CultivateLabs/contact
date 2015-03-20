module Contact
  class Form < ActiveRecord::Base
    before_create :generate_guid

    validates_presence_of :subject, :to_email
    validates_format_of :to_email, with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/

  private
    def generate_guid
      begin
        self[:guid] = SecureRandom.urlsafe_base64
      end while Form.exists?(:guid => self[:guid])
    end
  end
end
