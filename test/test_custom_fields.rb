# frozen_string_literal: true

require "test_helper"

class TestCustomFields < Minitest::Test
  def setup
    @client = LoopsRails::Client.new
  end

  def test_list
    VCR.use_cassette("list_custom_fields") do
      response = @client.custom_fields.list
      assert response.is_a?(Array), "Response should be an array of custom fields"
    end
  end
end
