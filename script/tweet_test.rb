# require 'net/http'
# uri = URI('http://192.241.203.120')
# Net::HTTP.get(uri)
require 'rubygems'
gem 'twitter'
require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "gfjPNCWchvebJCxasBYPQ"
  config.consumer_secret     = "OikIwdqLcxtLAwLrDZhox1tnhE02AX8gvCYK7zPqwyc"
  config.access_token        = "1863011600-uPsesBz7lKrloYrXUe2vsSlP0kn1b8OCgdNZYy0"
  config.access_token_secret = "qUDY4rShiSWecVPU40kaGHR3vZ8czpgorCqREmHr7g"
end
# Alternately, you can set the following environment variables:

# TWITTER_CONSUMER_KEY
# TWITTER_CONSUMER_SECRET
# TWITTER_ACCESS_TOKEN
# TWITTER_ACCESS_TOKEN_SECRET
# After configuration, requests can be made like so:

client.update("I'm tweeting with @gem!")
