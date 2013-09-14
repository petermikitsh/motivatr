class Action < ActiveRecord::Base
  belongs_to :challenge
  belongs_to :user
  attr_accessible :count, :challenge, :user
end
