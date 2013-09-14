class AddNameToGroup < ActiveRecord::Migration
  def change
  	add_column :groups, :name, :string
  end
end
