module LoopsRails
  class Events < ApiResource
    def send(email: nil, user_id: nil, event_name:, event_properties: {}, mailing_lists: {}, contact_properties: {})
      raise ArgumentError, "Either email or user_id must be provided" if email.nil? && user_id.nil?

      payload = {
        email: email,
        userId: user_id,
        eventName: event_name,
        eventProperties: event_properties,
        mailingLists: mailing_lists,
        contactProperties: contact_properties
      }.compact.to_json

      response = @conn.post('events/send') do |req|
        req.body = payload
      end

      parse_response(response)
    end
  end
end
