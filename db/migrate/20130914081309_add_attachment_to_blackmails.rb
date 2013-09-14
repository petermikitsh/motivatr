class AddAttachmentToBlackmails < ActiveRecord::Migration
  def self.up
    add_attachment :blackmails, :attachment
  end

  def self.down
    remove_attachment :blackmails, :attachment
  end
end
