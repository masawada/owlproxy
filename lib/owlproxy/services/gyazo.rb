require 'rest-client'
require 'json'

module OwlProxy
  module Service
    class Gyazo
      def upload(config: nil, option: nil, image: nil, message: nil)
        # generate request
        request = RestClient::Request.new(
          method: :post,
          url: config['api_endpoint'],
          payload: {
            multipart: true,
            access_token: config['access_token'],
            imagedata: File.new(image)
          }
        )

        response = request.execute
        json = JSON.parse(response)

       "#{json["permalink_url"]} #{json["url"]}"
      end
    end
  end
end

OwlProxy::Uploader.register :gyazo, OwlProxy::Service::Gyazo
