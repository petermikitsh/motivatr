class Stats < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  attr_accessible :failures, :successes
end
