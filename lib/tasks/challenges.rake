namespace :challenges do

  desc "Check for expired challenges"
  task :check => :environment do
    # puts Time.now
    # Challenge.all.each do |challenge|
    # 	puts challenge.name
    # 	diff = challenge.end - Time.now
    # 	puts diff
    # 	if((diff > 0) && (diff<= 599))
    # 		challenge.group.users.all.each do |user|
    # 			stat = Stats.where(user_id: user.id).where(group_id: challenge.group.id)
    # 			if(user.action==0)
    # 				stat.failures += 1
    # 				#  Call tweet
    # 				client = Twitter::REST::Client.new do |config|
    # 				  config.consumer_key        = NS3zNErKuJoTG9ChAq9u9gYOUR_CONSUMER_KEY"
    # 				  config.consumer_secret     = "ZIdllly86QZNHwK3PrkdVXg1aPkjI04MQGD39jUguw"
    # 				  config.access_token        = "1864697022-rCWE5vo4ro2lpj5tJhmkMUOKBDRTNke4ijW3W8S"
    # 				  config.access_token_secret = "9REupwu8jENObdZqWmrx4bsmBKbxeQF0k7H0HB6Q"
    # 				end
    # 				client.update("I'm tweeting with @gem!")
    # 			else
    # 				stat.successes += 1
    # 			end
    # 			stat.save
    # 		end

    # 	end
  end

end
