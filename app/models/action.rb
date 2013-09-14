class Action < ActiveRecord::Base
  belongs_to :challenge
  belongs_to :person
  attr_accessible :count
end
