module LoopsRails
  class CustomFields < ApiResource
    def list
      response = @conn.get("contacts/customFields")

      parse_response(response)
    end
  end
end