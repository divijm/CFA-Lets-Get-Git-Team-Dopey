class ChangeColumnsInEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :time
    add_column :events, :start_time, :datetime
    add_column :events, :end_time, :datetime
  end
end
