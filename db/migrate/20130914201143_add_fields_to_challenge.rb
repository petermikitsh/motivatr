class AddFieldsToChallenge < ActiveRecord::Migration
  def change
  	# add_column :challenges, :verify_type, :integer
  	# add_column :challenges, :penalty_type, :integer
  	add_column :challenges, :lat, :integer
  	add_column :challenges, :long, :integer
  end
end
