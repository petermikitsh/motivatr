class Blackmail < ActiveRecord::Base
  belongs_to :user
  attr_accessible :image, :attachment

  has_attached_file :attachment, styles: {
    standard: '600x600>'
  }
  
end
