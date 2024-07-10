# frozen_string_literal: true

require "test_helper"

class TestApiKey < Minitest::Test
  def setup
    @client = LoopsRails::Client.new
  end

  def test_test_api_key
    VCR.use_cassette("test_api_key") do
      response = @client.test_api_key
      assert_equal true, response["success"]
    end
  end
end
