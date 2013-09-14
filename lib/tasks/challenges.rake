namespace :challenges do

  desc "Check for expired challenges"
  task :check => :environment do
    puts Time.now
    Challenge.all.each do |challenge|
    	puts challenge.name
    	diff = challenge.end - Time.now
    	puts diff
    	if((diff > 0) && (diff<= 599))
    		challenge.group.users.all.each do |user|
    			stat = Stats.where(user_id: user.id).where(group_id: challenge.group.id)
    			if(user.action==0)
    				stat.failures += 1
    			else
    				stat.successes += 1
    			end
    			stat.save
    		end

    	end
    end
  end

end
