namespace :challenges do

  desc "Check for expired challenges"
  task :check => :environment do
    require 'twitter'
    puts Time.now
    Challenge.all.each do |challenge|
    	puts challenge.name
    	diff = challenge.end - Time.now
    	puts diff
    	if((diff > 0) && (diff > 5))
    		challenge.group.users.all.each do |user|
    			stat = Stats.where(user_id: user.id).where(group_id: challenge.group.id).first
    			puts user.id
    			puts challenge.group.id
    			puts stat.id
    			if(Action.where(user_id: user.id).where(challenge_id: challenge.id).first.count==0)
    				stat.failures = stat.failures + 1

                    require 'openssl'
                    OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
    				#  Call tweet
    				Twitter.configure do |config|
    				  config.consumer_key        = "NS3zNErKuJoTG9ChAq9u9g"
    				  config.consumer_secret     = "ZIdllly86QZNHwK3PrkdVXg1aPkjI04MQGD39jUguw"
    				  config.oauth_token        = "1864697022-rCWE5vo4ro2lpj5tJhmkMUOKBDRTNke4ijW3W8S"
    				  config.oauth_token_secret = "9REupwu8jENObdZqWmrx4bsmBKbxeQF0k7H0HB6Q"
    				end
                    puts "I ran"
    				Twitter.update_with_media("The cowards never started but the weak died along the way @regonics", File.new('img1.jpg'))
                    Twitter.update_with_media('"I want you sore, baby," he murmurs, and he continues his sweet, leisurely torment, backward, forward. "Every time you move tomorrow, I want you to be reminded that I\'ve been here. Only me. You are mine." ― E.L. James, Fifty Shades of Grey @huyouare', File.new('img2.jpg'))
                    break
    			else
    				stat.successes = stat.successes + 1
    			end
    			stat.save
    		end

    	end
    end
  end

end
