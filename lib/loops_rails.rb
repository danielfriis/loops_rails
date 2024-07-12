# frozen_string_literal: true

require 'faraday'
require 'json'
require_relative "loops_rails/version"
require_relative "loops_rails/client"
require_relative "loops_rails/configuration"
require_relative "loops_rails/client/api_resource"
require_relative "loops_rails/client/custom_fields"
require_relative "loops_rails/client/events"
require_relative "loops_rails/client/lists"
require_relative "loops_rails/client/api_key"
require_relative "loops_rails/client/contacts"
require_relative "loops_rails/client/transactional_emails"

module LoopsRails
  class Error < StandardError; end
end
