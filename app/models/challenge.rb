class Challenge < ActiveRecord::Base
  belongs_to :group
  attr_accessible :description, :end, :start, :group
end
