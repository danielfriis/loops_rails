module LoopsRails
  class TransactionalEmails < ApiResource
    def send(email:, transactional_id:, data_variables: {}, attachments: [])
      response = @conn.post('transactional') do |req|
        req.body = {
          email: email,
          transactionalId: transactional_id,
          dataVariables: data_variables,
          attachments: attachments
        }.to_json
      end
      parse_response(response)
    end
  end
end
