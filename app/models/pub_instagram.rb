class PubInstagram


  require 'open-uri'
  require 'json'

  def initialize
    user_feed_url = 'https://api.instagram.com/v1/users/1175572646/media/recent/?access_token=' + ENV["INSTAGRAM_ACCESS"]
    string_data = open(URI.encode(user_feed_url)).read
    data = JSON.parse(string_data)

  end

end
