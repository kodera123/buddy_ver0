class CreateBuddySheets < ActiveRecord::Migration[5.0]
  def change
    create_table :buddy_sheets do |t|
      t.date :start_at, null: false
      t.integer :period, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
