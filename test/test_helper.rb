# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "loops_rails"

require "dotenv/load"
require "minitest/autorun"
require "vcr"
require "webmock/minitest"

VCR.configure do |config|
  config.cassette_library_dir = "test/vcr_cassettes"
  config.hook_into :webmock
  config.filter_sensitive_data("<LOOPS_API_KEY>") { ENV["LOOPS_API_KEY"] }
end

LoopsRails.configure do |config|
  config.api_key = ENV["LOOPS_API_KEY"]
end
