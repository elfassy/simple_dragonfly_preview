module SimpleDragonflyPreview
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :default_image_url

    def initialize
      @default_image_url = "simple_dragonfly_preview/default.png"
    end
  end
end
