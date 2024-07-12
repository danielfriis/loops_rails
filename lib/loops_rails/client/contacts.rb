module LoopsRails
  class Contacts < ApiResource
    def create(email:, **attributes)
      payload = { email: email }.merge(attributes).compact

      response = @conn.post("contacts/create") do |req|
        req.body = payload.to_json
      end

      parse_response(response)
    end

    def update(email:, **attributes)
      payload = { email: email }.merge(attributes).compact

      response = @conn.put("contacts/update") do |req|
        req.body = payload.to_json
      end

      parse_response(response)
    end

    def find(email: nil, user_id: nil)
      raise ArgumentError, "Either email or user_id must be provided" if email.nil? && user_id.nil?

      params = { email: email, userId: user_id }.compact

      response = @conn.get("contacts/find") do |req|
        req.params = params
      end

      parse_response(response)
    end

    def delete(email: nil, user_id: nil)
      raise ArgumentError, "Either email or user_id must be provided" if email.nil? && user_id.nil?

      payload = { email: email, userId: user_id }.compact

      response = @conn.post("contacts/delete") do |req|
        req.body = payload.to_json
      end

      parse_response(response)
    end
  end
end
