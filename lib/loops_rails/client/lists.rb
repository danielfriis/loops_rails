module LoopsRails
  class Lists < ApiResource
    def list
      response = @conn.get("lists")

      parse_response(response)
    end
  end
end