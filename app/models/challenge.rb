class Challenge < ActiveRecord::Base
  belongs_to :group
  has_many :blackmails
  attr_accessible :name, :description, :end, :start, :group

  def self.user(user)
    joins(:group => :users).where(['groups_users.user_id = ?', user.id])
  end
end
