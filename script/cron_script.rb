require 'rubygems'
require 'json'
require 'net/http'

puts Dir.pwd

t = Time.now
wday = t.wday

days = { 0 => "Sunday" , 1 => "Monday", 2 => "Tuesday", 3 => "Wednesday", 4 => "Thursday", 5 => "Friday", 6 => "Saturday" }

puts "This hour: " + t.hour.to_s
puts "This day: " + days[t.wday]

my_hour = t.hour.to_s
my_weekday = days[t.wday]

puts t
t1 = Time.now+599
puts t1
puts t1-t

Group.all.each do |group|
	group.Challenge.all.each do |challenge|
		if((challenge.time - t) <= 599)
			group.User.all.each do |user|
				if(user.Action)