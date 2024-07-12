module LoopsRails
  class ApiKey < ApiResource
    def test
      response = @conn.get('api-key')

      parse_response(response)
    end
  end
end
