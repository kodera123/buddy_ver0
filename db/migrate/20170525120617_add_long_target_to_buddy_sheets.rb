class AddLongTargetToBuddySheets < ActiveRecord::Migration[5.0]
  def change
    add_column :buddy_sheets, :long_target, :string, null: false, default: ""
    add_column :buddy_sheets, :short_target, :string, null: false, default: ""
  end
end
