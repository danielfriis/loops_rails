module LoopsRails
  class TransactionalEmails < ApiResource
    def send(email:, transactional_id:, data_variables: {}, attachments: [])
      payload = {
        email: email,
        transactionalId: transactional_id,
        dataVariables: data_variables,
        attachments: attachments
      }.compact.to_json

      response = @conn.post('transactional') do |req|
        req.body = payload
      end

      parse_response(response)
    end
  end
end
