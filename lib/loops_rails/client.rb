module LoopsRails
  class Client
    BASE_URL = 'https://app.loops.so/api/v1/'

    def initialize(api_key = LoopsRails.configuration.api_key)
      @api_key = api_key
      @conn = Faraday.new(url: BASE_URL) do |faraday|
        faraday.request :url_encoded
        faraday.adapter Faraday.default_adapter
        faraday.headers['Authorization'] = "Bearer #{@api_key}"
        faraday.headers['Content-Type'] = 'application/json'
      end
    end

    def api_key
      @api_key ||= ApiKey.new(@conn)
    end

    def contacts
      @contacts ||= Contacts.new(@conn)
    end

    def transactional_emails
      @transactional_emails ||= TransactionalEmails.new(@conn)
    end
  end
end
