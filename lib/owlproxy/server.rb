require "sinatra/base"

module OwlProxy
  class Server < Sinatra::Base
    post '/upload' do
      image_url = "https://dn3pm25xmtlyu.cloudfront.net/photos/large/789653378.jpg?1373590992&Expires=1435328894&Signature=iM6DrcVpt7jAgjwBL3PDr93DnWs-Q9CzO~aPmum8ZOcmD436Rgdil9X0~KywrdMNn0SeSJc1Q~AQtuj9VdfibhrzZw3AG54yVf7bsDsYfHR~gBJFED2uebKoQSHbSqhu2lY1GI953cpO6PmMQw4kCx6Mchjn9XZeG93j-RV-Cj0_&Key-Pair-Id=APKAIYVGSUJFNRFZBBTA"

      # generate response
      content_type 'text/xml'
      erb :result, locals: { image_url: image_url }
    end
  end
end
