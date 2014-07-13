require 'twitter'
require 'open-uri'

class TwitterClient

  def self.client
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = 'jso686ZJoBZ93ddY7RwZfcQRd'
      config.consumer_secret     = 'UdCe4MI1dxSzi1HjSzHLVwgV5qzGW80T7R429ua8muxCAQjH29'
      config.access_token        = '18496288-6KIkqjrDkuJnaSZIMS8Rjw0OrncFt4JxGZIlul6YT'
      config.access_token_secret = 'ziWIkcoecpEMJVk2MTJxJSXj5yPFdipcZlXCWPYL3jxEP'
    end
  end
end
