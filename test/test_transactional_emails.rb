# frozen_string_literal: true

require "test_helper"

class TestTransactionalEmails < Minitest::Test
  def setup
    @client = LoopsRails::Client.new
  end

  def test_send_transactional_email
    VCR.use_cassette("send_transactional_email") do
      email = "john@example.com"
      transactional_id = ENV.fetch("LOOPS_TRANSACTIONAL_ID", "test_transactional_id")
      data_variables = { name: "John Doe" }

      response = @client.transactional_emails.send(
        email: email,
        transactional_id: transactional_id,
        data_variables: data_variables
      )

      assert_equal true, response["success"]
    end
  end
end
