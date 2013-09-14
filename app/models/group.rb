class Group < ActiveRecord::Base
  attr_accessible :bucket, :leader, :users, :user_ids
  has_and_belongs_to_many :users
  has_many :challenges
end
