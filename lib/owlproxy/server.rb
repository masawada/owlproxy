require "sinatra/base"

module OwlProxy
  class Server < Sinatra::Base
    set :port, Settings.port

    post '/upload' do
      image_url = OwlProxy::Uploader.upload(
        username: params[:username],
        option_string: params[:message],
        image: params[:media][:tempfile]
      )

      # generate response
      content_type 'text/xml'
      erb :result, locals: { image_url: image_url }
    end
  end
end
