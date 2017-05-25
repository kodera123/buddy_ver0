class CreateDayOffs < ActiveRecord::Migration[5.0]
  def change
    create_table :day_offs do |t|
      t.date :off_plan, null: false, default: ""

      t.timestamps
    end
  end
end
