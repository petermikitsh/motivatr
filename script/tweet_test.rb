require 'net/http'
uri = URI('http://192.241.203.120')
Net::HTTP.get(uri)
