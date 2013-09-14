class AddNameToChallenge < ActiveRecord::Migration
  def change
  	:challenges, :name, :string
  end
end
