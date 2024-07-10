module LoopsRails
  class ApiKey < ApiResource
    def test_api_key
      response = @conn.get('api-key')
      parse_response(response)
    end
  end
end
