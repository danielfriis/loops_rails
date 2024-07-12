# frozen_string_literal: true

require "test_helper"

class TestLists < Minitest::Test
  def setup
    @client = LoopsRails::Client.new
  end

  def test_list
    VCR.use_cassette("list_lists") do
      response = @client.lists.list
      assert response.is_a?(Array), "Response should be an array of lists"
    end
  end
end
