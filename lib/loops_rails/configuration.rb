module LoopsRails
  class Configuration
    attr_accessor :api_key
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end

