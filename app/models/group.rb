class Group < ActiveRecord::Base
  attr_accessible :bucket, :leader, :users
  has_and_belongs_to_many :users
  has_many :challenges
end
