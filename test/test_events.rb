# frozen_string_literal: true

require "test_helper"

class TestContacts < Minitest::Test
  def setup
    @client = LoopsRails::Client.new
  end

  def test_send_event
    VCR.use_cassette("send_event") do
      response = @client.events.send(email: "john@example.com", event_name: "test_event")
      assert_equal true, response["success"]
    end
  end
end
