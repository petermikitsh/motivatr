# require 'net/http'
# uri = URI('http://192.241.203.120')
# Net::HTTP.get(uri)

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "YOUR_CONSUMER_KEY"
  config.consumer_secret     = "YOUR_CONSUMER_SECRET"
  config.access_token        = "YOUR_ACCESS_TOKEN"
  config.access_token_secret = "YOUR_ACCESS_SECRET"
end
# Alternately, you can set the following environment variables:

# TWITTER_CONSUMER_KEY
# TWITTER_CONSUMER_SECRET
# TWITTER_ACCESS_TOKEN
# TWITTER_ACCESS_TOKEN_SECRET
# After configuration, requests can be made like so:

client.update("I'm tweeting with @gem!")