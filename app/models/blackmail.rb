class Blackmail < ActiveRecord::Base
  belongs_to :user
  attr_accessible :image
end
