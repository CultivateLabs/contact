module Contact
  module MessagesHelper
    def form_object(guid, message)
      if guid.nil?
        [message]
      else
        [Contact::Form.find_by(guid: guid), message]
      end
    end

    def form_url(guid)
      if guid.nil?
        contact.messages_path
      else
        contact.form_messages_path(Contact::Form.find_by(guid: guid))
      end
    end
  end
end
