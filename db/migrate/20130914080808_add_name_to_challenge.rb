class AddNameToChallenge < ActiveRecord::Migration
  def change
  	add_column :challenges, :name, :string
  end
end
