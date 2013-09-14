class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :successes
      t.integer :failures
      t.references :user
      t.references :group

      t.timestamps
    end
    add_index :stats, :user_id
    add_index :stats, :group_id
  end
end
