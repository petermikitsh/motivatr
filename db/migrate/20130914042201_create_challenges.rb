class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.datetime :start
      t.datetime :end
      t.string :description
      t.references :group

      t.timestamps
    end
    add_index :challenges, :group_id
  end
end
