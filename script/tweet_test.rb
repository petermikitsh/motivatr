# require 'net/http'
# uri = URI('http://192.241.203.120')
# Net::HTTP.get(uri)
require 'rubygems'
require 'twitter'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

Twitter.configure do |config|
  config.consumer_key        = "gfjPNCWchvebJCxasBYPQ"
  config.consumer_secret     = "OikIwdqLcxtLAwLrDZhox1tnhE02AX8gvCYK7zPqwyc"
  config.oauth_token       = "1863011600-uPsesBz7lKrloYrXUe2vsSlP0kn1b8OCgdNZYy0"
  config.oauth_token_secret = "qUDY4rShiSWecVPU40kaGHR3vZ8czpgorCqREmHr7g"
end
# Alternately, you can set the following environment variables:

# TWITTER_CONSUMER_KEY
# TWITTER_CONSUMER_SECRET
# TWITTER_ACCESS_TOKEN
# TWITTER_ACCESS_TOKEN_SECRET
# After configuration, requests can be made like so:

array_tweets = [""]

Twitter.update_with_media("You're an idiot @regonics", File.new("cat.jpeg"))
