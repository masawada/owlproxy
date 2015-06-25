module OwlProxy
  module Uploader
    @uploaders = {}

    def self.upload(username: '', option_string: '', image: path)
      option_string = Settings.default_option if option_string.empty?
      service_name, *option, message = option_string.split(':')

      config = Settings.services[service_name][username]
      config = Settings.services[service_name]['default'] if config.nil?

      raise if @uploaders[service_name.to_sym].nil?
      uploader = @uploaders[service_name.to_sym].new

      uploader.upload(
        config: config,
        option: option,
        image: image,
        message: message
      )
    end

    def self.register(name, service)
      raise if name.nil?
      raise if service.nil?
      @uploaders[name.to_sym] = service
    end
  end
end
