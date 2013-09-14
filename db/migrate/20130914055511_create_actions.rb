class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.references :challenge
      t.references :user
      t.integer :count

      t.timestamps
    end
    add_index :actions, :challenge_id
    add_index :actions, :user_id
  end
end
