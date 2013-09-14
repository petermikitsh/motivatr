# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(:email=>'joe@test.com',:name=>'Joe Test',:password=>'password')
user2 = User.create(:email=>'paul@test.com',:name=>'Paul Test',:password=>'password')
user3 = User.create(:email=>'mario@test.com',:name=>'Mario Test',:password=>'password')

group1 = Group.create(:bucket => 30)
group1.users = [user1, user2, user3]

challenge1 = Challenge.create(:description=>'Go to UHO', :start=>Time.now, :end=>Time.now+60, :group => group1 )

challenge1.group.users.each { |user| 
 Action.create( :challenge => challenge1, :user => user, :count => 0)
}

#blackmail = Blackmail.create(:user => user1)
#blackmail.attachment = URI.parse('https://www.google.com/images/srpr/logo4w.png')
