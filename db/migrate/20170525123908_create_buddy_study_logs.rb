class CreateBuddyStudyLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :buddy_study_logs do |t|
      t.integer :buddy_sheet_id, null: false
      t.date :schedule_date
      t.integer :schedule_time
      t.string :schedule_place
      t.string :schedule_content
      t.date :result_date
      t.integer :result_time
      t.string :result_place
      t.string :result_content
      t.text :thought
      t.text :trainer_comment, null: false, default: ""
      t.integer :trainer_id

      t.timestamps
    end
  end
end
