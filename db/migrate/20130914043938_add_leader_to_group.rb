class AddLeaderToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :leader, :integer
  end
end
