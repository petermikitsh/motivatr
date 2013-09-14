class Group < ActiveRecord::Base
  attr_accessible :bucket
  has_and_belongs_to_many :users
end
