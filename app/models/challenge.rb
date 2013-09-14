class Challenge < ActiveRecord::Base
  belongs_to :group
  has_many :blackmails
  attr_accessible :name, :description, :end, :start, :group
end
