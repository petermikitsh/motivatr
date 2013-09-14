class Challenge < ActiveRecord::Base
  belongs_to :group
  has_many :blackmails
  attr_accessible :description, :end, :start, :group
end
