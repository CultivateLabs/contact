module Contact
  module MessagesHelper
    def form_object(guid, message)
      if guid.nil?
        [message]
      else
        [Contact::Form.find_by(guid: guid), message]
      end
    end
  end
end
