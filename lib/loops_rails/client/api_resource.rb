module LoopsRails
  class ApiResource
    def initialize(conn)
      @conn = conn
    end

    private

    def parse_response(response)
      JSON.parse(response.body)
    rescue JSON::ParserError
      response.body
    end
  end
end
