require 'twitter'

module OwlProxy
  module Service
    class Twitter
      def upload(config: nil, option: nil, image: nil, message: nil)
        @client = ::Twitter::REST::Client.new do |cfg|
          cfg.consumer_key        = config['consumer_key']
          cfg.consumer_secret     = config['consumer_secret']
          cfg.access_token        = config['access_token']
          cfg.access_token_secret = config['access_token_secret']
        end

        upload_result = @client.upload(image)
        tweet_result = @client.update(message, {
          media_ids: upload_result.to_s
        })

        tweet_result.uri
      end
    end
  end
end

OwlProxy::Uploader.register :twitter, OwlProxy::Service::Twitter
