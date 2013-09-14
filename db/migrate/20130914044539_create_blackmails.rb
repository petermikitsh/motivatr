class CreateBlackmails < ActiveRecord::Migration
  def change
    create_table :blackmails do |t|
      t.string :image
      t.references :user

      t.timestamps
    end
    add_index :blackmails, :user_id
  end
end
